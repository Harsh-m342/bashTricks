#!/bin/bash
# Play with bc a powerful binary calculator
no1=100
echo "obase=2;$no1" | bc #conversion to base 2
no1=1100100
echo "obase=10;ibase=2;$no1" | bc # conversion to base 10
