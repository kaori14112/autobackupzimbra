#!/bin/bash
DATE=`date +"%a"`
for i in `zmprov -l gaa | egrep -v 'galsync|spam|virus|stimpson'`;do echo "$i,`zmprov -l ga $i userPassword | grep userPassword | sed 's/userPassword: //'`" >> /opt/zimbra/backup/mailbox/$DATE/password.txt; done;
