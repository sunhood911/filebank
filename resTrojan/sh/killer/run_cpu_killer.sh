#!/usr/bin/env bash



function run_cpu_killer(){

   DAEMON_NAME=cpu_killer.sh
   cat /dev/null > log.log

   nohup ./$DAEMON_NAME  1>log.log 2>&1 &

   pid2=`ps -ef | grep $DAEMON_NAME | grep -v grep |awk '{print $2}'`
   if [[ -n ${pid2} ]]; then
       echo "App $DAEMON_NAME start succeed,pid=${pid2}"
   else
       echo "App $DAEMON_NAME starting failed... "
   fi


}


run_cpu_killer
