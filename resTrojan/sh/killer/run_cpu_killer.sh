#!/usr/bin/env bash



function run_cpu_killer(){

   DAEMON_NAME=cpu_killer
   cat /dev/null > log.log

   nohup ./cpu_killer.sh  1>log.log 2>&1 &

   pid2=`ps -ef | grep 'daemon_trojan' | grep -v grep |awk '{print $2}'`
   if [[ -n ${pid2} ]]; then
       echo "App $DAEMON_NAME start succeed,pid=${pid2}"
   else
       echo "App $DAEMON_NAME starting failed... "
   fi


}


run_cpu_killer
