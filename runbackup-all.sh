echo "*******************************************************"
echo "*     Zimbra - Backup all email accounts              *"
echo "*******************************************************"
echo""
#
echo Start time of the backup = $(date +%T)
before="$(date +%s)"
#
echo ""
ZHOME=/opt/zimbra
ZBACKUP=$ZHOME/backup/mailbox
echo "Deleting old backup files in /opt/zimbra/backup/mailbox/ ..."
find /opt/zimbra/backup/mailbox/* -type d -mmin +10080 | xargs rm -rf
if [[ "${?}" -ne 0 ]]; then
   echo "Successfully!"
#   exit 1
fi
echo "Generating backup files ..."
su - zimbra -c "/opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/zimbra_backup_allaccounts.sh"
su - zimbra -c  "/opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/zimbra_backup_account_password.sh"
echo "Sending files to backup all email accounts for Backup Server (125.212.251.14 \o/ ) ..."
rsync -avH $ZBACKUP -e "ssh -p $1" $2@$3:$4
before2="$(date +%s)"
#
echo The process lasted = $(date +%T) | tee /root/backup/lastbackuptime.txt
# Calculating time
after="$(date +%s)"
elapsed="$(expr $after - $before)"
hours=$(($elapsed / 3600))
elapsed=$(($elapsed - $hours * 3600))
minutes=$(($elapsed / 60))
seconds=$(($elapsed - $minutes * 60))
echo The complete backup lasted : "$hours hours $minutes minutes $seconds seconds" >> /root/backup/lastbackuptime.txt
