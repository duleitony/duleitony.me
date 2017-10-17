#!/bin/bash

PROCESS=`pgrep je`
echo ${PROCESS}
kill -9 ${PROCESS}