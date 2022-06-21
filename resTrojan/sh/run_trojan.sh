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
#nohup bash -x ./daemon_trojan.sh >/dev/null 2>log & #executed without log
nohup bash -x ./daemon_trojan.sh log.log 2>&1 &

}

########################   start  ###############################
run_trojan
sleep 5
run_daemon_trojan

########################   start  ###############################