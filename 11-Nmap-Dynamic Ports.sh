#!/bin/bash
echo Nmap Dynamic Ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sTU -49152-65535 --version-intensity 0 -oA ./results/$word/$word-nmapDynamicPorts  $word & done
