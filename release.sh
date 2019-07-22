#!/bin/bash

if [ -z $1 ]; then
  echo "Usage: $0 <version>"
  exit 1
fi
tar czf /tmp/sensu-matrix-handler_${1}_linux_amd64.tar.gz bin/ etc/ 
sum=$(sha512sum /tmp/sensu-matrix-handler_${1}_linux_amd64.tar.gz | cut -d ' ' -f 1)
f=$(basename sensu-matrix-handler_${1}_linux_amd64.tar.gz)
echo ${sum} ${f} > /tmp/sensu-matrix-handler_${1}_sha512-checksums.txt
echo ${sum}
