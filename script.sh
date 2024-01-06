#!/bin/bash
docker run -d --name elasticsearch -v /srv/elas1:/usr/share/elasticsearch/data -p 9200:9200 -p 9300:9300 -e "discovery-type=single-node" elasticsearch:5
curl -X GET 127.0.0.1:9200
