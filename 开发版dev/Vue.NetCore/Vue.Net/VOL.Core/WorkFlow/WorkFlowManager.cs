﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using VOL.Core.DBManager;
using VOL.Core.Extensions;
using VOL.Core.ManageUser;
using VOL.Core.Utilities;
using VOL.Entity.DomainModels;

namespace VOL.Core.WorkFlow
{
    public static class WorkFlowManager
    {
        public static bool Exists<T>()
        {
            return WorkFlowContainer.Exists<T>();
        }

        public static bool Exists<T>(T entity)
        {
            return WorkFlowContainer.Exists<T>() && GetAuditStatusValue<T>(typeof(T).GetKeyProperty().GetValue(entity).ToString()) != null;
        }
        public static bool Exists(string table)
        {
            return WorkFlowContainer.Exists(table);
        }

        public static int GetAuditStatus<T>(string value)
        {
            return GetAuditStatusValue<T>(value) ?? 0;
        }

        public static int? GetAuditStatusValue<T>(string value)
        {
            return DBServerProvider.DbContext.Set<Sys_WorkFlowTable>()
                   .Where(x => x.WorkTable == typeof(T).GetEntityTableName() && x.WorkTableKey == value)
                   .Select(s => s.CurrentOrderId)
                   .FirstOrDefault();
        }


        /// <summary>
        /// 写入流程
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="entity"></param>
        public static void AddProcese<T>(T entity, bool rewrite = false)
        {
            string workTable = typeof(T).GetEntityTableName();

            Sys_WorkFlow workFlow = DBServerProvider.DbContext.Set<Sys_WorkFlow>()
                .Where(x => x.WorkTable == workTable)
                 .Include(x => x.Sys_WorkFlowStep)
                .FirstOrDefault();

            if (workFlow == null || workFlow.Sys_WorkFlowStep.Count == 0) return;

            var userInfo = UserContext.Current.UserInfo;
            Guid workFlowTable_Id = Guid.NewGuid();
            Sys_WorkFlowTable workFlowTable = new Sys_WorkFlowTable()
            {
                WorkFlowTable_Id = workFlowTable_Id,
                AuditStatus = (int)AuditStatus.审核中,
                CurrentOrderId = 1,
                Enable = 1,
                WorkFlow_Id = workFlow.WorkFlow_Id,
                WorkName = workFlow.WorkName,
                WorkTable = workTable,
                WorkTableKey = typeof(T).GetKeyProperty().GetValue(entity).ToString(),
                WorkTableName = workFlow.WorkTableName,
                CreateID = userInfo.User_Id,
                CreateDate = DateTime.Now,
                Creator = userInfo.UserTrueName,
                Sys_WorkFlowTableStep = workFlow.Sys_WorkFlowStep.OrderBy(x => x.OrderId).Select(s => new Sys_WorkFlowTableStep()
                {
                    Sys_WorkFlowTableStep_Id = Guid.NewGuid(),
                    WorkFlowTable_Id = workFlowTable_Id,
                    WorkFlow_Id = s.WorkFlow_Id,
                    StepId = s.StepId,
                    StepName = s.StepName,
                    AuditId = s.StepType == (int)AuditType.用户审批 ? s.StepValue : null,
                    StepType = s.StepType,
                    StepValue = s.StepValue,
                    OrderId = s.OrderId,
                    Enable = 1,
                    CreateDate = DateTime.Now,
                }).ToList()
            };
            DBServerProvider.DbContext.Set<Sys_WorkFlowTable>().Add(workFlowTable);
            DBServerProvider.DbContext.SaveChanges();
        }


        /// <summary>
        /// 进入流程审核
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="entity"></param>
        /// <param name="status"></param>
        /// <param name="remark"></param>
        /// <param name="autditProperty"></param>
        /// <param name="workFlowExecuting"></param>
        /// <param name="workFlowExecuted"></param>
        /// <returns></returns>
        public static WebResponseContent Audit<T>(T entity, AuditStatus status, string remark,
            PropertyInfo autditProperty,
             Func<T, AuditStatus, bool, WebResponseContent> workFlowExecuting,
             Func<T, AuditStatus, List<int>, bool, WebResponseContent> workFlowExecuted,
             bool init = false,
             Action<T, List<int>> initInvoke = null
            ) where T : class
        {
            WebResponseContent webResponse = new WebResponseContent(true);
            if (init)
            {
                if (WorkFlowContainer.Exists<T>())
                {
                    return webResponse;
                }
            }
            var dbContext = DBServerProvider.DbContext;
            var query = dbContext.Set<T>();

            var keyProperty = typeof(T).GetKeyProperty();
            string key = keyProperty.GetValue(entity).ToString();
            string workTable = typeof(T).GetEntityTableName();

            Sys_WorkFlowTable workFlow = dbContext.Set<Sys_WorkFlowTable>()
                       .Where(x => x.WorkTable == workTable && x.WorkTableKey == key)
                        .Include(x => x.Sys_WorkFlowTableStep)
                       .FirstOrDefault();

            if (init)
            {
                if (workFlow.Sys_WorkFlowTableStep.Count == 0)
                {
                    return webResponse;
                }
                int stepType = workFlow.Sys_WorkFlowTableStep.Where(x => x.OrderId == 1).Select(s => s.StepType).FirstOrDefault() ?? 0;
                initInvoke?.Invoke(entity, GetAuditUserIds(stepType));
                return webResponse;
            }

            workFlow.AuditStatus = (int)status;
            if (workFlow == null || workFlow.Sys_WorkFlowTableStep.Count == 0)
            {
                autditProperty.SetValue(entity, (int)status);
                query.Update(entity);
                dbContext.SaveChanges();
                return webResponse;
            }

            var currnetStep = workFlow.Sys_WorkFlowTableStep.Where(x => x.OrderId == workFlow.CurrentOrderId).FirstOrDefault();
            if (currnetStep == null)
            {
                autditProperty.SetValue(entity, (int)status);
                query.Update(entity);
                dbContext.SaveChanges();
                return webResponse;
            }

            var nextStep = workFlow.Sys_WorkFlowTableStep.Where(x => x.OrderId == workFlow.CurrentOrderId + 1).FirstOrDefault();

            //指向下一个人审批
            if (nextStep != null && status == AuditStatus.审核通过)
            {
                workFlow.CurrentOrderId = nextStep.OrderId;
                //原表显示审核中状态
                autditProperty.SetValue(entity, (int)AuditStatus.审核中);
                workFlow.AuditStatus = (int)AuditStatus.审核中;
            }
            else
            {
                autditProperty.SetValue(entity, (int)status);
            }
            bool isLast = nextStep == null;

            if (workFlowExecuting != null)
            {
                webResponse = workFlowExecuting.Invoke(entity, status, isLast);
                if (!webResponse.Status)
                {
                    return webResponse;
                }
            }

            query.Update(entity);

            var user = UserContext.Current.UserInfo;
            currnetStep.AuditId = user.User_Id;
            currnetStep.Auditor = user.UserTrueName;
            currnetStep.AuditDate = DateTime.Now;
            currnetStep.AuditStatus = (int)status;
            currnetStep.Remark = remark;
            dbContext.Set<Sys_WorkFlowTable>().Update(workFlow);

            dbContext.SaveChanges();

            if (workFlowExecuted != null)
            {
                webResponse = workFlowExecuted.Invoke(entity, status, GetAuditUserIds(nextStep?.StepType ?? 0), isLast);
            }
            return webResponse;
        }
        /// <summary>
        /// 获取审批人的id
        /// </summary>
        /// <param name="stepType"></param>
        /// <returns></returns>
        private static List<int> GetAuditUserIds(int stepType)
        {
            List<int> userIds = new List<int>();
            if (stepType == (int)AuditType.角色审批)
            {
                userIds = DBServerProvider.DbContext.Set<Sys_User>().Where(s => s.Role_Id == stepType).Take(50).Select(s => s.User_Id).ToList();
            }
            //else if (nextStep.StepType == (int)AuditType.部门审批)
            //{
            //    //部门审批待完
            //    // users = DBServerProvider.DbContext.Set<Sys_User>().Where(s => s.Role_Id == nextStep.StepValue).Take(50).Select(s => s.User_Id).ToList();
            //}
            else
            {
                userIds.Add(UserContext.Current.UserId);
            }
            return userIds;
        }
    }
}
