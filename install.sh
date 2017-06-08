#!/bin/bash

POG_DEMO=$(pwd)

git clone -b c-geosparql https://github.com/adejonghe/CSPARQL-engine.git

git clone -b c-geosparql https://github.com/adejonghe/rsp-services-csparql.git

git clone -b caprads https://github.com/adejonghe/TripleWave.git

#export PARLIAMENT_LIB=$POG_DEMO/CSPARQL-engine/csparql-sparql-parliament/lib

cd $POG_DEMO/CSPARQL-engine && mvn clean install

cd $POG_DEMO/rsp-services-csparql && mvn clean package docker:build

cd $POG_DEMO/TripleWave && make

cd $POG_DEMO && make
