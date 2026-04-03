# Windows/Linux 跨平台挂载 SFS Turbo 注意事项（论文 5.1）
1. 协议差异
- Linux：优先使用 NFS 协议，需安装 nfs-utils
- Windows：优先使用 CIFS 协议，需开启 NFS 客户端功能

2. 安全组放行要求
- 入方向/出方向放行：TCP/UDP 111、2049 端口（NFS 协议端口）
- 安全组绑定 ECS 与 SFS Turbo 所在同一 VPC

3. 路径格式
- Linux：域名:/ 格式
- Windows：\\域名\share 格式
