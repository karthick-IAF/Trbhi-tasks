#!/bin/sh
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.11.0
docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.11.0
docker ps
curl -XGET 'localhost:9200/_cat/health?v&pretty'