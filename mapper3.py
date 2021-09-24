#!/usr/bin/python

import sys
import re

line = sys.stdin.readline()
pattern = re.compile("[a-zA-Z0-9]+")
while line:
  for i in range(0,len(line)):
    #print(line[i:i+2])
    if (
        (line[i] != "\n") and (line[i] != " ") and 
        (line[i+1] != "\n") and (line[i+1] != " ")
        ):
      print(line[i:i+2]+"\t"+"1")
  line = sys.stdin.readline()
