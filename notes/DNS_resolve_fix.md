# SFS Turbo 域名 nslookup 解析失败排障（论文 5.1.2）
## 问题现象
执行 nslookup SFS Turbo 域名时报错：找不到域名服务器、解析超时，无法正常挂载。

## 解决步骤
1. 编辑 DNS 配置文件
vi /etc/resolv.conf

2. 添加云平台公共 DNS 服务器
nameserver 100.125.1.250
nameserver 100.125.21.250

3. 保存退出后重新测试解析
nslookup 你的SFSTurbo文件系统域名

4. 验证正常解析后再执行挂载命令
