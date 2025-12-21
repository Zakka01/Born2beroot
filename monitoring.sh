#!/bin/bash

Arch=$(uname -a)
Cpu=$(lscpu | grep "Core(s) per socket" | awk '{print $4}')
vCpu=$(nproc)

freeMem=$(free -m | awk  ' /Mem/ {print $4}')
TotalMem=$(free -m | awk ' /Mem/ {print $2}')
UsedMem=$(($TotalMem - $freeMem))
Perc=$(( UsedMem * 100 / TotalMem ))

FreeStorage=$(df -m / | awk ' /dev/ {print $4}')
TotalStorage=$(df -m / | awk ' /dev/ {print $2}')
UsedStorage=$(df -m / | awk ' /dev/ {print $3}')
PercStorage=$(( UsedStorage * 100 / TotalStorage ))

Cpuload=$(mpstat | grep "all" | awk '{print $NF}')
LastbootDate=$(who -b | awk '{print $3}')
LastbootTime=$(who -b | awk '{print $4}')

if lsblk | grep -q "lvm"; then
    lvm="yes"
else
    lvm="no"
fi

Cnx=$(ss -t | grep ESTAB | wc -l)
Userlog=$(who | awk '{print $1}' | sort -u | wc -l)
ip=$(hostname -I | awk '{print $1}')
Net=$(ip link | grep "link/ether" | awk '{print $2}')
Sudo=$(cat /var/log/sudo/sudocmd.log | grep "COMMAND" | wc -l)

wall "
# Architecture : $Arch
# CPU physical : $Cpu
# vCPU : $vCpu
# Memory Usage : $freeMem/$TotalMem MB ($Perc %)
# Disk Usage : $FreeStorage/$TotalStorage MB ($PercStorage %)
# CPU load : $Cpuload
# Last Boot : $LastbootDate $LastbootTime
# LVM use : $lvm
# Connections TCP : $Cnx ESTABLISHED
# User log : $Userlog
# Network : IP $ip ($Net)
# Sudo : $Sudo cmd
"