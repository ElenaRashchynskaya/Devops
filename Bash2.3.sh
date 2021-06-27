#!/bin/bash

grep -Eo 'Mozilla' dbodemo-access.log | awk '{ print $NF }' | sort |  uniq -c
grep -Eo 'Chrome' dbodemo-access.log | awk '{ print $NF }' | sort |  uniq -c
grep -Eo 'Opera' dbodemo-access.log | awk '{ print $NF }' | sort |  uniq -c