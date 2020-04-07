#!/bin/bash
mkdir -p /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/
cp zimbra_backup_allaccounts.sh /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/
chown -R zimbra:zimbra /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/zimbra_backup_allaccounts.sh
chmox +x /opt/backup/SCRIPT_ZIBRA_BACKUP_ALL_ACCOUNTS/zimbra_backup_allaccounts.sh
mkdir -p /opt/zimbra/backup/mailbox/
chown -R zimbra:zimbra /opt/zimbra/backup/mailbox/
