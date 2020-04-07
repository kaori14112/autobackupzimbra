#!/bin/bash
mkdir -p /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/
cp {zimbra_backup_allaccounts.sh}{zimbra_backup_account_password.sh} /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/
chown -R zimbra:zimbra /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/*
chmod +x /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/*
mkdir -p /opt/zimbra/backup/mailbox/
chown -R zimbra:zimbra /opt/zimbra/backup/mailbox/
mkdir -p /home/backup
mv runbackup-all.sh /home/backup/
chmod +x /home/backup/runbackup-all.sh
crontab -l > backupzimbra
echo "0 22 * * * /root/backup/runbackup-all.sh" >> backupzimbra
crontab backupzimbra
rm -rf backupzimbra
