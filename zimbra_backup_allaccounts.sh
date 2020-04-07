ZHOME=/opt/zimbra
ZBACKUP=$ZHOME/backup/mailbox
ZCONFD=$ZHOME/conf
DATE=`date +"%a"`
ZDUMPDIR=$ZBACKUP/$DATE
ZMBOX=/opt/zimbra/bin/zmmailbox
if [ ! -d $ZDUMPDIR ]; then
mkdir -p $ZDUMPDIR
fi
echo " Running zmprov ... "
       for mbox in `zmprov -l gaa`
do
#mboxc=
echo " Generating files from backup $mbox ..."
       $ZMBOX -z -m $mbox getRestURL "//?fmt=zip" > $ZDUMPDIR/$mbox.zip
done
