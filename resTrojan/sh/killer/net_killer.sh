#! /bin/bash


wget speedtest.py https://raw.github.com/sivel/speedtest-cli/master/speedtest.py && chmod +x speedtest.py

endless_loop()
{
do
python3 speedtest.py
sleep 600
done

}

endless_loop
