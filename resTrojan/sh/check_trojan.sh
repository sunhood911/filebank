#!/usr/bin/env bash

APP_NAME=trojan
DAEMON_NAME=daemon_trojan

#ps aux |grep ${APP_NAME} 

function status_daemon(){
pid=`ps -ef | grep 'daemon_trojan' | grep -v grep |awk '{print $2}'`
if [[ -n ${pid} ]]; then

    echo "App $DAEMON_NAME is running,pid=${pid}"
else
    echo "App $DAEMON_NAME is not running"
fi
}


########################   start  ###############################
systemctl status trojan

sleep 1

echo ""
echo ""
	
status_daemon


########################   start  ###############################