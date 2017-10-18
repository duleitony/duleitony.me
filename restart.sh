#!/bin/bash

PROCESS=`pgrep je`
echo ${PROCESS}
if [ -z "${PROCESS}" ]
then
   kill -9 ${PROCESS}
fi

rm -rf /root/duleitony.me/_site

echo "==========Start Jekyll Service============"
cd /root/duleitony.me | pwd
jekyll serve --port 80 --host 0.0.0.0