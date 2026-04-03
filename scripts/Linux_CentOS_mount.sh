#!/bin/bash
# 论文 5.1.2 CentOS 挂载 SFS Turbo / NFS 实操脚本
# 1. 安装NFS客户端工具
yum install -y nfs-utils

# 2. 解析SFS Turbo文件系统域名（验证DNS解析）
nslookup 你的SFSTurbo文件系统域名

# 3. 创建本地挂载目录
mkdir -p /mnt/sfsturbo

# 4. 执行NFS挂载
mount -t nfs 你的SFSTurbo文件系统域名:/ /mnt/sfsturbo

# 5. 验证挂载结果
mount -l
df -h
