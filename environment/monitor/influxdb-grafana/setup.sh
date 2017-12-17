#!/bin/bash

# for token
# docker-compose up -d
# localhost:3000 -> admin/admin
# follow top left link > admin > API Keys
# add key with role Admin and voila

. properties

echo $TOKEN
echo $HOST
echo $GRAFANA_PORT

# create database in influxdb
curl -XPOST http://${HOST}:8086/query --data-urlencode "q=CREATE DATABASE telegraf"

# create retention policy in influxdb
curl -XPOST http://${HOST}:8086/query --data-urlencode "q=CREATE RETENTION POLICY \"telegraf-retention\" ON telegraf DURATION 30d REPLICATION 1 DEFAULT"

# create datasource in grafana
curl -i -XPOST -H "content-type: application/json" \
    -H "accept: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    -d @./config/telegraf_ds.json \
    http://${HOST}:${GRAFANA_PORT}/api/datasources

# create dashboard in grafana
curl -XPOST -H "content-type: application/json" \
    -H "accept: application/json" \
    -H "Authorization: Bearer $TOKEN" \
    -d @./config/telegraf-system-dashboard_rev3.json \
    http://${HOST}:${GRAFANA_PORT}/api/dashboards/db
