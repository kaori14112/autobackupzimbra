#!/bin/bash
mkdir -p /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/
cp {zimbra_backup_allaccounts.sh}{zimbra_backup_account_password.sh} /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/
chown -R zimbra:zimbra /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/*
chmod +x /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/*
chmod +x runbackup-all.sh
mkdir -p /opt/zimbra/backup/mailbox/
chown -R zimbra:zimbra /opt/zimbra/backup/mailbox/
mkdir -o /home/backup
