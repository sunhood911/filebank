#! /bin/bash


wget speedtest.py https://raw.github.com/sivel/speedtest-cli/master/speedtest.py && chmod +x speedtest.py

endless_loop()
{
do
/usr/bin/python3 speedtest.py   1>log.log 2>&1 &
sleep 300
done

}

endless_loop
