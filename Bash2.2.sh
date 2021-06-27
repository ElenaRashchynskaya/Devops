#!/bin/bash

grep -Eo 'HTTPS?\/1.0"\s[0-9]{3}' dbodemo-access.log | awk '{ print $NF }' | sort |  uniq -c
