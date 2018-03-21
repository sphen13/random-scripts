#!/bin/bash
apt-get install -y zabbix-agent
sed -i 's/=127\.0\.0\.1/=zabbix\.thirdvantage\.com/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# StartAgents=3/StartAgents=0/g' /etc/zabbix/zabbix_agentd.conf
sed -i "s/Hostname=Zabbix server/Hostname=$(hostname)/g" /etc/zabbix/zabbix_agentd.conf
service zabbix-agent restart
sleep 10
tail -100 /var/log/zabbix-agent/zabbix_agentd.log
