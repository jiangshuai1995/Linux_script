#  Use this shell script monitor service which in  port 1328

#! /bin/bash
function monitor()
{
  lsof -i :1328
  t=$?   //表示上一条语句的返回码
  if [ $t -eq 0 ]
  then
    echo "The service is working"
  elif [ $t -eq 1 ]
  then
    echo "The service is down"
  fi
}

while :
do
  monitor &>> /tmp/monitor.log
  sleep 5  //间隔5s
done
