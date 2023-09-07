#! /bin/bash



endless_loop()
{
x=1
while true
do
	x=1
	while [ $x -le 10000000 ]
	do
		x=$((x+1))
	done
	sleep 0.01
done

}

endless_loop
