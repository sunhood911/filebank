#! /bin/bash

python3_=/usr/bin/python3

wget speedtest.py https://raw.github.com/sivel/speedtest-cli/master/speedtest.py && chmod +x speedtest.py

endless_loop()
{
do
${python3_} speedtest.py
sleep 300
done

}

endless_loop
