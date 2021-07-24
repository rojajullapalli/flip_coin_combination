#!/bin/bash/ 
echo "flip Coin Combination"
declare  -A  coin;

coin[headhead]=0;
coin[tailtail]=0;
coin[headtail]=0;
count=0;

addtoDictionary()
{
  if [ $1 -eq 0 ]
  then
      coin[headhead]=`expr ${coin[headhead]} + 1`;
  elif [ $1 -eq 1 ]
  then
      coin[tailtail]=`expr ${coin[tailtail]} + 1`;
  else
     coin[headtail]=`expr ${coin[headtail]} + 1`;
  fi
}

while [ $count -le 25 ]
do
  flip=$((RANDOM%3)); 
  addtoDictionary $flip;
  ((++count))
done

perheadhead=`expr ${coin[headhead]} \* 100`;
perheadhead=`expr $perheadhead / 25`;
pertailtail=`expr ${coin[tailtail]} \* 100`;
pertailtail=`expr $pertailtail / 25`;
perheadtail=`expr ${coin[headtail]} \* 100`;
perheadtail=`expr $perheadtail / 25`;
echo "Total headhead count ${coin[headhead]}"
echo "Total tailtail count ${coin[tailtail]}"
echo "Total headtail count ${coin[headtail]}"
echo "percentage of headhead is $perheadhead"
echo "percentage of tailtail is $pertailtail"
echo "percentage of headtail is $perheadtail"
