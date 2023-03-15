#!/usr/bin/env bash


if [ ! -d "./server/killer" ]; then
mkdir -p ./server/killer
echo "创建成功killer文件夹~"
else
echo "killer文件夹已存在鸭... "
fi


path="https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/killer/"

echo " cpu_killer.sh"
rm -f  cpu_killer.sh
curl -o  cpu_killer.sh ${path}cpu_killer.sh && chmod +x  cpu_killer.sh 
echo " mem_killer.sh"
rm -f  mem_killer.sh
curl -o  mem_killer.sh ${path}mem_killer.sh && chmod +x  mem_killer.sh  
echo " net_killer.sh"
rm -f  net_killer.sh
curl -o  net_killer.sh ${path}net_killer.sh && chmod +x  net_killer.sh  

echo " run_cpu_killer.sh"
rm -f  run_cpu_killer.sh
curl -o  run_cpu_killer.sh ${path}run_cpu_killer.sh && chmod +x  run_cpu_killer.sh 
echo " run_mem_killer.sh"
rm -f  run_mem_killer.sh
curl -o  run_mem_killer.sh ${path}run_mem_killer.sh && chmod +x  run_mem_killer.sh 
echo " run_mem_net.sh"
rm -f  run_mem_net.sh
curl -o  run_mem_net.sh ${path}run_mem_net.sh && chmod +x  run_mem_net.sh 


echo " stop_all.sh"
rm -f  stop_all.sh
curl -o  stop_all.sh ${path}stop_all.sh && chmod +x  stop_all.sh 





