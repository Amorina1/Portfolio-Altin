#!/bin/bash

    echo "= Përdorimi i CPU dhe RAM ="

    # CPU usage
top -n1 | grep "Cpu(s)"

# RAM usage
free -m

if (( cpu_int == 100 )); then
    echo "CPU limit has been reached"
fi

if (( ram == 100 )); then
    echo "RAM limit has been reached"
fi

