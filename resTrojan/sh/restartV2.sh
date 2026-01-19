#!/usr/bin/env bash

APP_NAME=/usr/mydata/jarServer/CenterServerV2-0.0.1-SNAPSHOT.jar

pid=`ps -ef | grep $APP_NAME | grep -v grep |awk '{print $2}'`
if [[ -n ${pid} ]]; then
    echo App $APP_NAME is running,pid=$pid,stop it...
    kill -9 $pid
    sleep 1
    pid2=`ps -ef | grep $APP_NAME | grep -v grep |awk '{print $2}'`
    if [[ -n ${pid2} ]]; then
        echo stop failed,pid=$pid2
    else
        echo stop succeed!
    fi
    
else
    echo App $APP_NAME is not running!
fi

echo now start app $APP_NAME ....
#nohup java -jar $APP_NAME> /log/$(date +%Y-%m-%d).log 2>&1 &

if [ -f "$APP_NAME" ]; then
    #nohup bash -x test.sh >/dev/null 2>log & #no log
    nohup java -jar $APP_NAME> log.log 2>&1 &    #no log
    #nohup java -jar $APP_NAME> /dev/null 2>&1 &
    sleep 2
    pidnew=`ps -ef | grep $APP_NAME | grep -v grep |awk '{print $2}'`
    if [[ -n ${pidnew} ]]; then
        echo App $APP_NAME start succeed, pid=$pidnew
    else
        echo App $APP_NAME start failed
    fi
else
    echo "$APP_NAME" not exist.
fi


