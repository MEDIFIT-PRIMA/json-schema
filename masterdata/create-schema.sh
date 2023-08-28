#!/bin/bash

curl -XPUT localhost:9200/master-data-schema

curl -X 'POST' \
  'http://localhost:8080/masterdata/schemas/medifit/core-schema?defaultPrefix=core-schema' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  --data-binary '@core-schema.json'

curl -X 'POST' \
  'http://localhost:8080/masterdata/schemas/medifit/ProductMasterdata?defaultPrefix=ProductMasterdata' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  --data-binary '@product-masterdata-schema.json'

curl -X 'POST' \
  'http://localhost:8080/masterdata/schemas/medifit/ProductInstance?defaultPrefix=ProductInstance' \
  -H 'accept: */*' \
  -H 'Content-Type: application/json' \
  --data-binary '@product-instance-schema.json'

