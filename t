#!/bin/bash
echo `sensors | grep temp1 | sed 's/temp1:/Temperature -> /g' | sed 's/+//g'`
