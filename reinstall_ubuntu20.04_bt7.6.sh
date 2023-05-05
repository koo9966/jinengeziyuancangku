#!/bin/sh
echo "现在开始重装系统"
cd /
echo "创建恢复临时文件夹"
mkdir -p /lsddbr
chmod 777 /lsddbr
echo "挂载系统分区"
mount /dev/mmcblk2p17 /lsddbr
echo "格式化分区内容，请稍候"
rm -rf /lsddbr/*
echo "正在下载系统请稍候..."
cd /lsddbr
wget http://pan.ekeo.club/d/189/rk3318/%E7%B3%BB%E7%BB%9F%E9%87%8D%E8%A3%85%E9%95%9C%E5%83%8F/ubuntu20.04.tar.gz
echo "正在解压系统，需要一点时间请稍后..."
tar -zxvf ubuntu20.04.tar.gz
echo "解压完成"
echo "删除多余文件"
rm -rf ubuntu20.04.tar.gz
echo "设置启动相关配置"
echo "重装系统成功"
echo "正在退出重装系统"
sleep 3
umount /dev/mmcblk2p17

echo "Complete! 请拔下电源后,拔下U盘,再通电开机,启动系统..."
