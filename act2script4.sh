#!/bin/bash

generate_report () {

read -p "Where would you like this report (absolute path)? " absoPath
sleep 1
read -p "What would you like the report file to be called (without extension)? " reportFile
sleep 1

finalReport=$absoPath/$reportFile.txt

echo "----Report Header: $(date) ----" >> $finalReport
sudo top -n1  >> $finalReport
sudo free -h >> $finalReport
sudo df -h >> $finalReport
echo "---End of Date and Usage Report---" >> $finalReport 

echo "Report generation was successful: $finalReport"
return
}

generate_report

