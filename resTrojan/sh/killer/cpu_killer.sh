#! /bin/bash



endless_loop()
{
x=1
while true;do
	x=1
	while [ "$x" -lt 1000000 ];do
		let x++
	done
	sleep 0.1
done

}

endless_loop

