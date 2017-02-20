#Configurar sudoers
apt-get install sudoers
Cmnd_Alias AST = /usr/sbin/asterisk, /usr/bin/fail2ban-client
zabbix  ALL=NOPASSWD:AST

#Alterar /etc/passwd
zabbix:x:UID:GID::/var/lib/zabbix/:/bin/bash
Alterar somente o false por bash no final da linha.

#Diretórios
Criar o diretório /etc/zabbix/scrips/asterisk e jogar os scripts.
Mover o arquivo userparameter_asterisk.conf para /etc/zabbix/zabbix_agentd.d/
