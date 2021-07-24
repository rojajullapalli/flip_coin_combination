#!/bin/bash/ 
echo "flip Coin Combination"
declare  -A  coin;

coin[heads]=0;
coin[tails]=0;
count=0;

addtoDictionary(){
if [ $1 -eq 0 ]
then
coin[heads]=`expr ${coin[heads]} + 1`;
else
coin[tails]=`expr ${coin[tails]} + 1`;
fi
}

while [ $count -le 25 ]
do
flip=$((RANDOM%2));
addtoDictionary $flip;
((++count))
done

perhead=`expr ${coin[heads]} \* 100`;
perhead=`expr $perhead / 25`;
pertail=`expr 100 - $perhead`;
echo "percentage of heads is $perhead"
echo "percentage of tails is $pertail"
