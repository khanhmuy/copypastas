#!/bin/bash

find "$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" -type f -not -name $(basename $0) -exec sh -c '
  for f; do
    mimetype -b "$f" | grep -Eqv "(image)|(octet\-stream)|(gzip)" &&
    brotli -Zkf $f && gzip -9kf $f
  done
' sh {} + 
