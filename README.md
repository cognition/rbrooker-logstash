Logstash  
========

Base Docker image to run Logstash version 1.5.0



Usage
-----
```
docker run -d -it --link=es:es  --name="logstash" -v /opt/logstash/etc:/etc/logstash -v /opt/logstash/log:/var/log/logstash -e ES="elasticsearch" rbrooker/logstash
```

Notes
-----

* You must set ES if you don't have your own config file
* Exposed volume to for mounting is "/etc/logstash" and '/var/log/logstash"





Maintained by 
-------------

Ramon Brooker <rbrooker@aetherealmind.com>
