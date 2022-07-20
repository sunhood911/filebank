#!/usr/bin/env bash




###############restart###############
APP_NAME=trojan 

function run_trojan(){

#sleep 1
pid=`ps -ef | grep '/usr/src/trojan/trojan -c /usr/src/trojan/server.conf' | grep -v grep |awk '{print $2}'`
if [[ -n ${pid} ]]; then
    #echo "App $APP_NAME is alreading running, pid=$pid"
	dddd="do nothing"
else
    now=$(date '+%Y%m%d %H:%M:%S')
    echo "########################   restart ↓  ############################### $now"
    echo "App $APP_NAME is not running,now start...  "

    #/usr/src/trojan/trojan -c /usr/src/trojan/server.conf > /dev/null 2>&1 &
    systemctl restart trojan

    sleep 1
    pidnew=`ps -ef | grep '/usr/src/trojan/trojan -c /usr/src/trojan/server.conf' | grep -v grep |awk '{print $2}'`
    if [[ -n ${pidnew} ]]; then
        echo "App $APP_NAME start succeed, pid=$pidnew"
    else
        echo "App $APP_NAME start failed"
    fi
	
    echo "########################   restart ↑  ###############################"
fi

}

#main
function execute(){
while :
do
    run_trojan
    sleep 4
done

}


########################   start  ###############################
execute

########################   start  ###############################