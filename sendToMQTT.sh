#!/bin/bash

#This script is provided by Chiunownow https://github.com/Chiunownow
#Thank you very much for providing this script
#This script is 

#use e.g with that script: MySensor.sh 
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -b 1000 -r --debounce --skipidentical 50 --name MySensor --callback sendToMQTT

mqtt_host="192.168.31.253"
mqtt_topic=xiaomi-temperature2

mosquitto_pub -h $mqtt_host -t "$mqtt_topic/$2/temp"           -i "mibridge" -m "$3"
mosquitto_pub -h $mqtt_host -t "$mqtt_topic/$2/humidity"       -i "mibridge" -m "$4"
mosquitto_pub -h $mqtt_host -t "$mqtt_topic/$2/batteryvoltage" -i "mibridge" -m "$5"
mosquitto_pub -h $mqtt_host -t "$mqtt_topic/$2/batterylevel"   -i "mibridge" -m "$6"
