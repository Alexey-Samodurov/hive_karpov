#!/usr/bin/env bash

for file in ./sql/*
do
  echo $file
  hive -f $file
done