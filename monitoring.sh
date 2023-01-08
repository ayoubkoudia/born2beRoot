#! /bin/bash

if lvdisplay > /dev/null 2>&1; then
	lvm_usage="no"
else
	lvm_usage="yes"
fi

mem_total=$(free --mega | grep Mem: | tr -s ' ' | cut -d ' ' -f 2)
mem_used=$(free --mega | grep Mem: | tr -s ' ' | cut -d ' ' -f 3)
mem_pcent=$((mem_used * 100 / mem_total))

disk_used=$(df -h --total | grep total | awk '{print $3}')
disk_total=$(df -h --total | grep total | awk '{print $4}')
disk_pcent=$(df -h --total | grep total | awk '{print $5}')

sudo_line=$(cat /var/log/sudo/sudo.log | wc -l)

wall "	#Architecture : $(uname -a)
	#CPU physical : $(nproc)
	#vCPU : $(grep processor /proc/cpuinfo | wc -l)
	#Memory Usage : $mem_used/$mem_total MB ($mem_pcent%)
	#Disk Usage : $disk_used/$disk_total ($disk_pcent)
	#CPU load : $(mpstat | grep all | awk '{print 100-$13}')%
	#Last boot : $(who -b | awk '{print $3,$4}')
	#LVM use : $lvm_usage
	#Connexions TCP : $(netstat -at | grep ESTABLISHED | grep 4242 | wc -l)
	#User log : $(who | awk '{print $1}'| sort | wc -l)
	#Network : IP $(hostname -I)($(ip a | grep ether | awk '{print $2}'))
	#Sudo : $((sudo_line / 2)) cmd"
