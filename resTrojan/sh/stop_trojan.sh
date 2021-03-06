#!/usr/bin/env bash

#systemctl stop trojan


APP_NAME=trojan
DAEMON_NAME=daemon_trojan

function stop_trojan(){
pid=`ps -ef | grep '/usr/src/trojan/trojan -c /usr/src/trojan/server.conf' | grep -v grep |awk '{print $2}'`
if [[ -n ${pid} ]]; then
    echo "App $APP_NAME is running,pid=${pid},stop it..."
    kill -9 ${pid}
    systemctl stop trojan
    echo App $APP_NAME stop succeed,pid=${pid}
else
    echo "App $APP_NAME is not running"
fi
}


function stop_daemon(){
DAEMON_NAME=daemon_trojan
pid=`ps -ef | grep 'daemon_trojan' | grep -v grep |awk '{print $2}'`
if [[ -n ${pid} ]]; then
    echo "App $DAEMON_NAME is running,pid=${pid},stop it..."
    kill -9 ${pid}
	sleep 1
    pid2=`ps -ef | grep 'daemon_trojan' | grep -v grep |awk '{print $2}'`
    if [[ -n ${pid2} ]]; then
        echo "App $DAEMON_NAME stop failed,pid=${pid2}"
    else
        echo "App $DAEMON_NAME start succeed,pid=${pid}"
    fi
else
    echo "App $DAEMON_NAME is not running"
fi
}


########################   start  ###############################
stop_daemon

sleep 1
echo ""
echo ""
stop_trojan
########################   start  ###############################