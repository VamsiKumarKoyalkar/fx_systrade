#!/bin/bash

awk -F, '($0 ~ "log"){ printf("%s,%5s,%16s,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f\n",$2,$3,$4,$5,$6,$7,$8,$9,$10) }' <(tail -n 30 $1 | cut -d"," -f 1,2,3,4,5,6,7,8,9,10)

