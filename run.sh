#!/bin/bash

echo "$ES"

if [[ ! -f /etc/logstash/.BASE ]]
then 
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
/opt/logstash/bin/logstash -f /etc/logstash/conf.d/ 
#/etc/init.d/logstash start

