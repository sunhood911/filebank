#! /bin/bash



endless_loop()
{
echo -ne "i=0;
while true
do
i=i+100;
i=100
done" | /bin/bash &
}

endless_loop
