#!/usr/bin/env bash

hive -f './sql/create_database.sql'
hive -f './sql/create_dicts.sql'
hive -f './sql/create_view.sql'
hive -f './sql/create_mart.sql'