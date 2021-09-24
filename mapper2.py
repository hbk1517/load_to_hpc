#!/usr/bin/python

import sys
import re

line = sys.stdin.readline()
pattern = re.compile("[a-zA-Z0-9]+")
while line:
  for i in range(1,len(line)):
    #print(line[i-1],line[i])
    if ((line[i] != "\n") and (line[i] != " ") and (line[i-1]==line[i])):
        print(line[i]+"\t"+"1")
  line = sys.stdin.readline()
