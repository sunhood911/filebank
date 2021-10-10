#!/usr/bin/env bash



if [ ! -d "./trojan" ]; then
mkdir -p ./trojan
echo "创建成功trojan文件夹~"
else
echo "trojan文件夹已存在鸭... "
fi


resTrojan_sh="https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/"

echo "./trojan/stop_trojan.sh"
rm -f ./trojan/stop_trojan.sh
curl -o ./trojan/stop_trojan.sh ${resTrojan_sh}stop_trojan.sh && chmod +x ./trojan/stop_trojan.sh 
echo "./trojan/trojan_install.sh"
rm -f ./trojan/trojan_install.sh
curl -o ./trojan/trojan_install.sh ${resTrojan_sh}trojan_install.sh && chmod +x ./trojan/trojan_install.sh  
echo "./trojan/bbr_install.sh"
rm -f ./trojan/bbr_install.sh
curl -o ./trojan/bbr_install.sh ${resTrojan_sh}bbr_install.sh && chmod +x ./trojan/bbr_install.sh  
echo "./trojan/run_trojan.sh"
rm -f ./trojan/run_trojan.sh
curl -o ./trojan/run_trojan.sh ${resTrojan_sh}run_trojan.sh && chmod +x ./trojan/run_trojan.sh 
echo "./trojan/check_trojan.sh"
rm -f ./trojan/check_trojan.sh
curl -o ./trojan/check_trojan.sh ${resTrojan_sh}check_trojan.sh && chmod +x ./trojan/check_trojan.sh 






