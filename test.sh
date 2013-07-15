#!/usr/bin/env bash
set -e
echo "********************************************* Test 1"
curl --verbose "http://ec2-54-226-243-0.compute-1.amazonaws.com:8080/?url=http://nexus-assets-dev.s3.amazonaws.com/uploads/organization/0cc2c707-9faf-410a-9de8-a60ba389c747.jpg&w=100&h=100" > output-temp
mediainfo output-temp
rm -f output-temp
echo "********************************************* Test 2"
curl --verbose --head "http://ec2-54-226-243-0.compute-1.amazonaws.com:8080/?w=100&h=100"

http://ec2-54-226-243-0.compute-1.amazonaws.com:8080/resize/100x100/http://nexus-assets-dev.s3.amazonaws.com/uploads/organization/0cc2c707-9faf-410a-9de8-a60ba389c747.jpg
