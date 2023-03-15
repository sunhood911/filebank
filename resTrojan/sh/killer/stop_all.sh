#!/usr/bin/env bash


APP_NAME=cpu_killer.sh
if test $( pgrep -f $APP_NAME | wc -l ) -eq 0 ;then
   echo "App $APP_NAME is not running"
else
    pid=`ps -ef | grep $APP_NAME | grep -v grep |awk '{print $2}'`
    if [[ -n ${pid} ]]; then
        echo "App $APP_NAME is running,pid=${pid},stop it..."
        kill -9 ${pid}
        echo App $APP_NAME stop succeed,pid=${pid}
    fi
fi

APP_NAME=mem_killer.sh
if test $( pgrep -f $APP_NAME | wc -l ) -eq 0 ;then
   echo "App $APP_NAME is not running"
else
    pid=`ps -ef | grep $APP_NAME | grep -v grep |awk '{print $2}'`
    if [[ -n ${pid} ]]; then
        echo "App $APP_NAME is running,pid=${pid},stop it..."
        kill -9 ${pid}
        echo App $APP_NAME stop succeed,pid=${pid}
    fi
fi

APP_NAME=net_killer.sh
if test $( pgrep -f $APP_NAME | wc -l ) -eq 0 ;then
   echo "App $APP_NAME is not running"
else
    pid=`ps -ef | grep $APP_NAME | grep -v grep |awk '{print $2}'`
    if [[ -n ${pid} ]]; then
        echo "App $APP_NAME is running,pid=${pid},stop it..."
        kill -9 ${pid}
        echo App $APP_NAME stop succeed,pid=${pid}
    fi
fi



cat /dev/null > log.log
nohup ./mem_killer.sh release  1>log.log 2>&1 &


