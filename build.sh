#!/bin/bash

# generate ssh key
echo "Y" | ssh-keygen -t rsa -P "" -f config/id_rsa

# Hadoop build
#docker build -f ./docker-centos-hadoop-3-nodes/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:Hadoop

# Spark
#docker build -f ./spark/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:Spark

# PostgreSQL Hive Metastore Server
#docker build -f ./postgresql/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:postgresql

# Hive
#docker build -f ./hive/Dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:hive

# Nifi
docker build -f ./nifi/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:nifi

# Edge
#docker build -f ./edge/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:edge

# hue
#docker build -f ./hue/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:hue

# zeppelin
#docker build -f ./zeppelin/dockerfile . -t madhudharmapuri/hadoop-3node-spark-hive-cluster:zeppelin
