#!/usr/bin/env bash



if [ ! -d "./trojan" ]; then
mkdir -p ./trojan
echo "创建成功trojan文件夹~"
else
echo "trojan文件夹已存在鸭... "
fi


#curl -o trojan_install.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/trojan_install.sh && chmod +x trojan_install.sh
#curl -o run_trojan.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/run_trojan.sh  && chmod +x run_trojan.sh
#curl -o stop_trojan.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/stop_trojan.sh  && chmod +x stop_trojan.sh/run_trojan



echo "./trojan/stop_trojan.sh"
rm -f ./trojan/stop_trojan.sh
curl -o ./trojan/stop_trojan.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/stop_trojan.sh && chmod +x ./trojan/stop_trojan.sh 
echo "./trojan/trojan_install.sh"
rm -f ./trojan/trojan_install.sh
curl -o ./trojan/trojan_install.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/trojan_install.sh && chmod +x ./trojan/trojan_install.sh  
echo "./trojan/bbr_install.sh"
rm -f ./trojan/bbr_install.sh
curl -o ./trojan/bbr_install.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/bbr_install.sh && chmod +x ./trojan/bbr_install.sh  
echo "./trojan/run_trojan.sh"
rm -f ./trojan/run_trojan.sh
curl -o ./trojan/run_trojan.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/run_trojan.sh && chmod +x ./trojan/run_trojan.sh 
echo "./trojan/check_trojan.sh"
rm -f ./trojan/check_trojan.sh
curl -o ./trojan/check_trojan.sh https://raw.githubusercontent.com/sunhood911/filebank/main/resTrojan/sh/check_trojan.sh && chmod +x ./trojan/check_trojan.sh 






