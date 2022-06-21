#!/usr/bin/env bash

APP_NAME=trojan
DAEMON_NAME=daemon_trojan

#ps aux |grep ${APP_NAME} 

function status_daemon(){
pid2=`ps -ef | grep 'daemon_trojan' | grep -v grep |awk '{print $2}'`
if [[ -n ${pid2} ]]; then
	echo ""
	echo ""
    echo "App $DAEMON_NAME is running,pid=${pid}"
    #kill -9 ${pid2}
    #systemctl stop trojan
    #echo App $DAEMON_NAME stop succeed,pid=${pid2}
else
    echo "App $DAEMON_NAME is not running"
fi
}


########################   start  ###############################
systemctl status trojan

sleep 3

status_daemon


########################   start  ###############################