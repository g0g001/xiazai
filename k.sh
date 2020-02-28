#!/bin/sh
echo $$ > /tmp/kool_xhjsqm.id
	if [ ! -f "/tmp/7620koolproxy/koolproxy" ] ; then
	 logger -t "【koolproxy】" "使用内置主程序"
	  kool_xhjsqm=0
          while [ $kool_xhjsqm -le 10 ]
	   do
             if [ ! -d /tmp/RAM ] ; then
              mkdir -p /tmp/RAM
              fi
             wget -qO /tmp/RAM/koolproxy.tgz https://gitee.com/g0g001/ram/raw/master/padavan/7620koolproxy.tgz
             if [ ! -e /tmp/RAM/koolproxy.tgz ] ; then
	      logger -t "【koolproxy】" "下载失败"
	      let kool_xhjsqm=kool_xhjsqm + 1
              ehco "循环："$kool_sleep
	      else
              kool_xhjsqm=100
	      fi
             if [ $kool_xhjsqm -eq 8 ] ; then
	      logger -t "【koolproxy】" "安装失败，请检查网络"
	      cat /tmp/kool_xhjsqm.id | xargs kill -s 9
	      fi
             let kool_sleep=kool_xhjsqm * kool_xhjsqm * 1
	     ehco "等待："$kool_sleep
	     sleep $kool_sleep
            done
         logger -t "【koolproxy】" "下载成功，开始解压"
         tar -xzvf "/tmp/Rkoolproxy.tgz" -C "/tmp"
	 rm /tmp/RAM/koolproxy.tgz
	 fi
echo "OK"
