#!/bin/bash

find "$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )" -not \( -path \*.git -prune \) -not -name $(basename $0) -not -regex '*.yaml' -type f -exec sh -c '
  for f; do
    mimetype -b "$f" | grep -Eqv "(image)|(octet\-stream)|(gzip)" &&
    brotli -Zkf $f && gzip -n9kf $f
  done
' sh {} + 
