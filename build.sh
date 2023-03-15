#!/bin/bash

# generate ssh key
echo "Y" | ssh-keygen -t rsa -P "" -f config/id_rsa

# Hadoop build
docker build -f ./dockerfile . -t myhadoopcluster:hadoop-3.2

# Spark
#docker build -f ./spark/Dockerfile . -t Datacopy-Container/hadoop_cluster:spark

# PostgreSQL Hive Metastore Server
#docker build -f ./postgresql-hms/Dockerfile . -t Datacopy-Container/hadoop_cluster:postgresql-hms

# Hive
#docker build -f ./hive/Dockerfile . -t Datacopy-Container/hadoop_cluster:hive

# Nifi
#docker build -f ./nifi/Dockerfile . -t Datacopy-Container/hadoop_cluster:nifi

# Edge
#docker build -f ./edge/Dockerfile . -t Datacopy-Container/hadoop_cluster:edge

# hue
#docker build -f ./hue/Dockerfile . -t Datacopy-Container/hadoop_cluster:hue

# zeppelin
#docker build -f ./zeppelin/Dockerfile . -t Datacopy-Container/hadoop_cluster:zeppelin
