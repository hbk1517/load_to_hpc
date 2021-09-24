#!/usr/bin/python
#Be sure the indentation is correct and also be sure the line above this is on the first line 
import sys
current_char = None
current_count = 0
char_arr = None
word = None
for line in sys.stdin:
  line = line.strip()
  char, count = line.split('\t', 1)
  count = int(count)
  if current_char == char:
     current_count += count
  else:
     if current_char:
          print('%s\t%s' % (current_char, current_count))
     current_count = count
     current_char = char
if current_char == char:
     print('%s\t%s' % (current_char, current_count))
