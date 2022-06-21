#!/usr/bin/env bash




###############restart###############
APP_NAME=trojan 

#sleep 1
function run_trojan(){
    pid=`ps -ef | grep '/usr/src/trojan/trojan -c /usr/src/trojan/server.conf' | grep -v grep |awk '{print $2}'`
    if [[ -n ${pid} ]]; then
        echo "App $APP_NAME is alreading running, pid=$pid"
    else
        echo "App $APP_NAME is not running,now start..."

        #/usr/src/trojan/trojan -c /usr/src/trojan/server.conf > /dev/null 2>&1 &
        systemctl restart trojan

        sleep 1
        pidnew=`ps -ef | grep '/usr/src/trojan/trojan -c /usr/src/trojan/server.conf' | grep -v grep |awk '{print $2}'`
        if [[ -n ${pidnew} ]]; then
            echo "App $APP_NAME start succeed, pid=$pidnew"
        else
            echo "App $APP_NAME start failed"
        fi
    fi
}

function run_daemon_trojan(){

   DAEMON_NAME=daemon_trojan
   cat /dev/null > log.log

   nohup ./daemon_trojan.sh  1>log.log 2>&1 &

   pid2=`ps -ef | grep 'daemon_trojan' | grep -v grep |awk '{print $2}'`
   if [[ -n ${pid2} ]]; then
       echo "App $DAEMON_NAME start succeed,pid=${pid2}"
   else
       echo "App $DAEMON_NAME starting failed... "
   fi


}



########################   start  ###############################
run_trojan
sleep 1
echo ""
echo ""
run_daemon_trojan

########################   start  ###############################