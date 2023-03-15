#!/bin/bash


mem_size=2000M


function mem_killer(){

mkdir /tmp/memory

mount -t tmpfs -o size=${mem_size} tmpfs /tmp/memory

dd if=/dev/zero of=/tmp/memory/block

sleep 300

rm /tmp/memory/block

umount /tmp/memory

rmdir /tmp/memory


}


for((;;))
do

mem_killer
sleep 30

done