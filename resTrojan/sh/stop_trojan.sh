#!/usr/bin/env bash

#APP_NAME=trojan


#systemctl stop trojan


APP_NAME=trojan
pid=`ps -ef | grep '/usr/src/trojan/trojan -c /usr/src/trojan/server.conf' | grep -v grep |awk '{print $2}'`
if [[ -n ${pid} ]]; then
	echo "App $APP_NAME is running,pid=${pid},stop it..."
	kill -9 ${pid}
	echo App $APP_NAME stop succeed,pid=${pid}
else
	echo "App $APP_NAME is not running"
fi
