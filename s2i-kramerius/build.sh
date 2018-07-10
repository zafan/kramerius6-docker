#!/bin/bash
docker build -t kramerius-builder6 .
s2i build --ref=fcrepo4 --incremental=true --exclude="" https://github.com/ceskaexpedice/kramerius.git kramerius6-builder moravianlibrary/kramerius6
if hash docker-squash 2>/dev/null; then
  docker-squash moravianlibrary/kramerius6 -t moravianlibrary/kramerius6
fi
