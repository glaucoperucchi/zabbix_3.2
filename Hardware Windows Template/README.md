#Configurar zabbix_agentd.conf no host
* Timeout=15
* Include=C:\zabbix\zabbix_agentd.conf.d\*.conf

Em seguida reinicie o zabbix agent.

#Diretórios
* Mover o diretório **script** para **C:\zabbix**
* Mover **UserParameter_hardware.conf** para o diretório **C:\zabbix\zabbix_agentd.conf.d** conforme configurado no include acima.
