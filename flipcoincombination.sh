#!/bin/bash/ 
echo "flip Coin Combination"
declare  -A  coin;

coin[headheadhead]=0;
coin[tailtailtail]=0;
coin[headheadtail]=0;
coin[headtailtail]=0;
count=0;

addtoDictionary()
{
  if [ $1 -eq 0 ]
  then
     coin[headheadhead]=`expr ${coin[headheadhead]} + 1`;
  elif [ $1 -eq 1 ]
  then
     coin[tailtailtail]=`expr ${coin[tailtailtail]} + 1`;
  elif [ $1 -eq 2 ]
  then
     coin[headheadtail]=`expr ${coin[headheadtail]} + 1`;
  else
    coin[headtailtail]=`expr ${coin[headtailtail]} + 1`;
  fi
}

while [ $count -le 25 ]
do
  flip=$((RANDOM%4));
  addtoDictionary $flip;
  ((++count))
done

perheadheadhead=`expr ${coin[headheadhead]} \* 100`;
perheadheadhead=`expr $perheadheadhead / 25`;
pertailtailtail=`expr ${coin[tailtailtail]} \* 100`;
pertailtailtail=`expr $pertailtailtail / 25`;
perheadheadtail=`expr ${coin[headheadtail]} \* 100`;
perheadheadtail=`expr $perheadheadtail / 25`;
perheadtailtail=`expr ${coin[headtailtail]} \* 100`;
perheadtailtail=`expr $perheadtailtail / 25`;
echo "percentage of headheadhead is $perheadheadhead"
echo "percentage of tailtailtail is $pertailtailtail"
echo "percentage of headheadtail is $perheadheadtail"
echo "percentage of headtailtail is $perheadtailtail"
