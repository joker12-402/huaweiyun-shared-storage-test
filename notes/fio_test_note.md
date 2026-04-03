# fio 压测核心参数说明（对应论文 5.1.2 测试配置）
- bs：块大小，4k 用于 IOPS 测试，1M 用于带宽测试
- iodepth：队列深度，压测时设为 128/32 充分压测性能
- numjobs：并发任务数，本次测试单任务压测
- rw：读写模式，read/randread/write/randwrite/rw/randrw
- direct=1：直接 I/O，绕过系统缓存，测试结果更真实
