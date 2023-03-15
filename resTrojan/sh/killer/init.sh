#!/usr/bin/env bash


dir=~/killer
if [ ! -d "${dir}" ]; then
mkdir -p ${dir}
echo "创建成功killer文件夹~"
else
echo "killer文件夹已存在鸭... "
fi


path="https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/killer/"

echo " cpu_killer.sh"
rm -f  cpu_killer.sh
curl -o  ${dir}/cpu_killer.sh ${path}cpu_killer.sh && chmod +x  cpu_killer.sh 
echo " mem_killer.sh"
rm -f  mem_killer.sh
curl -o  ${dir}/mem_killer.sh ${path}mem_killer.sh && chmod +x  mem_killer.sh  
echo " net_killer.sh"
rm -f  net_killer.sh
curl -o  ${dir}/net_killer.sh ${path}net_killer.sh && chmod +x  net_killer.sh  

echo " run_cpu_killer.sh"
rm -f  run_cpu_killer.sh
curl -o  ${dir}/run_cpu_killer.sh ${path}run_cpu_killer.sh && chmod +x  run_cpu_killer.sh 
echo " run_mem_killer.sh"
rm -f  run_mem_killer.sh
curl -o  ${dir}/run_mem_killer.sh ${path}run_mem_killer.sh && chmod +x  run_mem_killer.sh 
echo " run_net_killer.sh"
rm -f  run_net_killer.sh
curl -o  ${dir}/run_net_killer.sh ${path}run_net_killer.sh && chmod +x  run_net_killer.sh 


echo " stop_all.sh"
rm -f  stop_all.sh
curl -o  ${dir}/stop_all.sh ${path}stop_all.sh && chmod +x  stop_all.sh 





