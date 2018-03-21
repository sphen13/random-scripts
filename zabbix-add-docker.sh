#!/bin/bash
usermod -aG docker zabbix
mkdir /etc/zabbix/scripts
wget -O /etc/zabbix/scripts/docker.sh https://github.com/digiapulssi/zabbix-monitoring-scripts/raw/master/etc/zabbix/scripts/docker.sh
chmod +x /etc/zabbix/scripts/docker.sh
wget -O /etc/zabbix/zabbix_agentd.conf.d/docker.conf https://github.com/digiapulssi/zabbix-monitoring-scripts/raw/master/etc/zabbix/zabbix_agentd.d/docker.conf
service zabbix-agent restart
