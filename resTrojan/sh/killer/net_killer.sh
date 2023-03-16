#! /bin/bash


wget speedtest.py https://raw.github.com/sivel/speedtest-cli/master/speedtest.py && chmod a+rx speedtest.py

endless_loop()
{
for((;;))
do
/usr/bin/python3 speedtest.py   1>log.log 2>&1 &
sleep 180
/usr/bin/python3 speedtest.py   1>log.log 2>&1 &
sleep 300
/usr/bin/python3 speedtest.py   1>log.log 2>&1 &
sleep 240
done

}

endless_loop
