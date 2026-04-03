#!/bin/bash
# 论文 5.1.2 fio 性能压测全套脚本（6项核心测试）
# 测试目录：/mnt/sfsturbo/fio_test
mkdir -p /mnt/sfsturbo/fio_test
cd /mnt/sfsturbo/fio_test

# 1. 顺序读 IOPS
fio -name=seq_read -ioengine=libaio -direct=1 -thread -rw=read -bs=4k -iodepth=128 -numjobs=1 -size=10G -runtime=300

# 2. 随机读 IOPS
fio -name=rand_read -ioengine=libaio -direct=1 -thread -rw=randread -bs=4k -iodepth=128 -numjobs=1 -size=10G -runtime=300

# 3. 顺序写 IOPS
fio -name=seq_write -ioengine=libaio -direct=1 -thread -rw=write -bs=4k -iodepth=128 -numjobs=1 -size=10G -runtime=300

# 4. 随机写 IOPS
fio -name=rand_write -ioengine=libaio -direct=1 -thread -rw=randwrite -bs=4k -iodepth=128 -numjobs=1 -size=10G -runtime=300

# 5. 顺序读写带宽
fio -name=seq_rw -ioengine=libaio -direct=1 -thread -rw=rw -bs=1M -iodepth=32 -numjobs=1 -size=10G -runtime=300

# 6. 随机读写带宽
fio -name=rand_rw -ioengine=libaio -direct=1 -thread -rw=randrw -bs=1M -iodepth=32 -numjobs=1 -size=10G -runtime=300
