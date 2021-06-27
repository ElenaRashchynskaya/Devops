#!/bin/bash

grep -Eo '/ibank/version.txt' dbodemo-access.log | awk '{ print $NF }' | sort |  uniq -c