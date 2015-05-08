Logstash  
========

Base Docker image to run Logstash version 1.5.0.rc4-1



Usage
-----

docker run -d -it -e ES='es' --link=es:es  --name="logstash" --volume=/opt/logstash:/etc/logstash rbrooker/logstash


Notes
-----

* You must set ES if you don't have your own config file
* Exposed volume to for mounting is "/etc/logstash" and '/var/log/logstash"





Maintained by 
-------------

Ramon Brooker <rbrooker@aetherealmind.com>
