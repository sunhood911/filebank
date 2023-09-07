#!/usr/bin/env bash

APP_NAME=cpu_killer.sh

function stop1(){

	
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

}


function stop2(){

	nohup ./mem_killer.sh release  1>log.log 2>&1 &
	kill -s 9 `ps -aux | grep cpu_killer | awk '{print $2}'`
	kill -s 9 `ps -aux | grep net_killer | awk '{print $2}'`
	kill -s 9 `ps -aux | grep mem_killer | awk '{print $2}'`
	cat /dev/null > log.log

}


function stop3(){
	kill -s 9 `ps -aux | grep 'killer.sh' | awk '{print $2}'`
	cat /dev/null > log.log
}


stop3