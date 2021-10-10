#!/usr/bin/env bash


systemctl restart trojan

###############restart###############
#APP_NAME=trojan 
#APP_PATH=/usr/src/trojan/trojan 
#APP_CONFIG=/usr/src/trojan/server.conf

#pid=`ps -ef | grep $APP_PATH | grep -v grep |awk '{print $2}'`
#if [[ -n ${pid} ]]; then
#    echo "App $APP_NAME is alreading running, pid=$pid"
#else
#    echo "App $APP_NAME is not running,now start..."
#    /usr/src/trojan/trojan -c /usr/src/trojan/server.conf > /dev/null 2>&1 &
#    sleep 2
#    pidnew=`ps -ef | grep $APP_PATH | grep -v grep |awk '{print $2}'`
#	if [[ -n ${pidnew} ]]; then
#        echo "App $APP_NAME start succeed, pid=$pidnew"
#    else
#        echo "App $APP_NAME start failed"
#    fi
#fi
