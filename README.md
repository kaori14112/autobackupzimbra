# Scripts automatically backup zimbra
  * Base on project sample from zimbra documents
  * Run initiator.sh to create folders and grant privileges for those folders/executable files
  * After run initiator.sh then run runbackup-all.sh $1 $2 $3 $4
    * Replace $1 $2 $3 $4 following order:
      * $1 SSH Port backup server
      * $2 user backup
      * $3 IP backup server
      * $4 Directory to contain backup files on destination folders

