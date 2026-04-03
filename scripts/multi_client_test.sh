#!/bin/bash
# 论文 5.2 多客户端共享一致性测试脚本
# 客户端A执行：创建测试文件
echo "客户端A写入测试内容" > /mnt/sfsturbo/test_multi.txt
cat /mnt/sfsturbo/test_multi.txt

# 客户端B执行：查看并修改文件
cat /mnt/sfsturbo/test_multi.txt
echo "客户端B追加内容" >> /mnt/sfsturbo/test_multi.txt

# 两端均执行：查看最终文件内容
cat /mnt/sfsturbo/test_multi.txt
