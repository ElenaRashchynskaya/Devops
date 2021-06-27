#!/bin/bash

grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' dbodemo-access.log | sort | uniq -c | sort -rn