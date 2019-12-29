#!/usr/bin/python

import sys
import psutil


command = sys.argv[1]

if command == 'cpu':
    print(psutil.cpu_percent(0.3))
elif command == 'battery':
    print(psutil.sensors_battery().percent)
elif command == 'ram':
    print(psutil.virtual_memory().percent)
