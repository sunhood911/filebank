#!/usr/bin/env bash


cd ~/
if [ ! -d "./trojan" ]; then
mkdir -p ./trojan
echo "创建成功trojan文件夹~"
else
echo "trojan文件夹已存在鸭... "
fi

cd ~/trojan

resTrojan_sh="https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/"

echo " stop_trojan.sh"
rm -f  stop_trojan.sh
curl -o  stop_trojan.sh ${resTrojan_sh}stop_trojan.sh && chmod +x  stop_trojan.sh 
echo " trojan_install.sh"
rm -f  trojan_install.sh
curl -o  trojan_install.sh ${resTrojan_sh}trojan_install.sh && chmod +x  trojan_install.sh  
echo " bbr_install.sh"
rm -f  bbr_install.sh
curl -o  bbr_install.sh ${resTrojan_sh}bbr_install.sh && chmod +x  bbr_install.sh  
echo " run_trojan.sh"
rm -f  run_trojan.sh
curl -o  run_trojan.sh ${resTrojan_sh}run_trojan.sh && chmod +x  run_trojan.sh 
echo " check_trojan.sh"
rm -f  check_trojan.sh
curl -o  check_trojan.sh ${resTrojan_sh}check_trojan.sh && chmod +x  check_trojan.sh 

