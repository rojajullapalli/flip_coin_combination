#!/bin/bash/ 
echo "flip Coin Combination"
declare  -A  coin;

coin[heads]=0;
coin[tails]=0;
count=0;

addtoDictionary()
{
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
echo "percentage of headhead is $perheadhead"
echo "percentage of tailtail is $pertailtail"
echo "percentage of headtail is $perheadtail"
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
declare  -A  coinsort

coinsort[1]=$perhead
coinsort[2]=$pertail
coinsort[3]=$perheadhead
coinsort[4]=$pertailtail
coinsort[5]=$perheadtail
coinsort[6]=$perheadheadhead
coinsort[7]=$pertailtailtail
coinsort[8]=$perheadheadtail
coinsort[9]=$perheadtailtail
echo "dictionary :" ${coinsort[@]}
variable=${coinsort[@]}
for value in $variable
do 
  array+=($value)
done
echo "array value are:" ${array[@]}
sorting=`echo ${array[@]} | awk 'BEGIN{RS=" "} {print $1}' | sort -n `
echo $sorting
