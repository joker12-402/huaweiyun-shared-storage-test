# 多客户端共享一致性测试结果（论文 5.2）
## 测试环境
- 两台同 VPC 下的 ECS 实例
- 均挂载同一 SFS Turbo 文件系统到 /mnt/sfsturbo

## 测试结果
1. 客户端 A 创建文件并写入内容后，客户端 B 可实时读取
2. 客户端 B 追加内容后，两端查看文件内容完全一致
3. 文件修改、删除操作可在多客户端间实时同步
4. 无数据不一致、文件冲突问题，共享一致性满足业务要求

## 核心截图
<img width="345" height="321" alt="image" src="https://github.com/user-attachments/assets/ec0e84fc-50f3-49b2-8e72-fe73994b2114" />
<img width="459" height="326" alt="image" src="https://github.com/user-attachments/assets/8799648f-6546-4f59-9f2e-dbc9888d3f54" />
