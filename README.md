Logstash  
========

Base Docker image to run Logstash version 1.5.0



Usage
-----
```
docker run -d -it --link=es:es  --name="logstash" -v /opt/logstash/c:/etc/logstash -v /opt/logstash/log:/var/log/logstash -e ES="elasticsearch" rbrooker/logstash
```

Notes
-----

* You must set ``ES`` (ElasticSearch hostname) if you don't have your own config file
* Exposed volume to for mounting is "/etc/logstash" and '/var/log/logstash"
* Exposed enviroment variable ``JAVA_OPTS`` for setting heap. Default:``JAVA_OPTS="-Xms512m -Xmx1gm"``
* Use the `` -e REBUILD=1 `` if the directory structure for volumes is already set, and a new container is needed with different flags (such as ``--restart="always"``) 


Documentation 
-------------

* [Elastic.co Logstash Product Site](https://www.elastic.co/products/logstash)
* [Logstash Documentation](https://www.elastic.co/guide/en/logstash/current/index.html)
* A really good book that helped me a lot, [The Logstash Book](http://www.logstashbook.com/), by James Turnbull


Maintained by 
-------------

Ramon Brooker <rbrooker@aetherealmind.com>



!Important: tag 3.1 has errors, (not sure how to delete it, but fixed now) 



