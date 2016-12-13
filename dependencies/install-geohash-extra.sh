#!/bin/bash

cd /tmp &&\
	make &&\
	make install &&\
	2>/dev/null

if [ $? -eq 0 ]
then
  echo "extension installed successfully"
  exit 0
else
  echo "extension installation failed" >&2
  exit 1
fi
