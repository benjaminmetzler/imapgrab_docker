#!/usr/bin/env bash
while [ TRUE ]; do
    python2.7 /app/imapgrab.py -d -s ${EMAIL_SERVER} -u ${EMAIL_USER} -p $EMAIL_PASSWORD -P ${EMAIL_SERVER_PORT} --quiet --folder /data -v --ssl -m "_ALL_" --localuser imapgrab
    sleep ${IMAPGRAB_TIMEOUT}
done
