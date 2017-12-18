#!/bin/bash
docker run --rm telegraf --input-filter cpu:mem:net:swap --output-filter influxdb config > ./telegraf.conf
sed -i -e 's/localhost/influxdb/g' telegraf.conf
