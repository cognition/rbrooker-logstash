#!/bin/bash

if [ REBUILD == 1 ]; then 
    echo "rebuild"
   /usr/sbin/rabbitmq-server
   exit 0
fi




echo "$ES"

if [ -z JAVA_OPTS ]; then
    echo "JAVA_OPTS=\"-Xmx1g\"" >> /etc/environment
    set JAVA_OPTS="-Xms512m -Xmx1gm"
    export _JAVA_OPTIONS="-Xmx1g" 
fi




if [[ ! -f /etc/logstash/.BASE ]]
then 
  touch  /etc/logstash/conf.d/initial.conf 
  cat > /etc/logstash/conf.d/initial.conf <<EOF
input {
    file {
     path => "/tmp/*_log"
     start_position => beginning
   }
}
output {
  elasticsearch {
      host => ${ES}
   }
   stdout { codec => rubydebug }
}
EOF
touch /etc/logstash/.BASE 
else                                                                           
    echo "already updated, lets get started!"  
fi                                                                             
echo ""


# run logstash
/opt/logstash/bin/logstash agent -f /etc/logstash/conf.d/ -l /var/log/logstash/logstash.log 
#/etc/init.d/logstash start


