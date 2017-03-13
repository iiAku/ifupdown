#!/bin/bash
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Wrong parameters, usage: ./ifupdown.sh (ifup|ifdown) interfaceName until"
    echo "eg: ./ifupdown.sh ifup eth0 5 will bring up eth0:1,eth0:2,eth0:3 "
    echo "eg: ./ifupdown.sh ifdown eth0 5 will bring down eth0:1,eth0:2,eth0:3"
  else
    action=$1
    interfaceName=$2
    until=$3

    for i in $(seq 1 $until)
    do
       $interfaceName interfaceName:$i
       echo "Setting up $interfaceName eth0:$i"
    done
fi
