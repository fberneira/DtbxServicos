#!/bin/bash

ORACLE_SID=cdb1
export ORACLE_BASE=/u02/app/oracle
export ORACLE_HOME=/u02/app/oracle/product/12.2.0.1/db_1
ORA_OWNER=oracle
DIRBACKUP=/srv/Dtbx_servicos/DtbxBackup/TempDir

$ORACLE_HOME/bin/expdp backuporacle/adlbackupora@CDB1 schemas=sapiens exclude=TABLE:\"IN \(\'R960PAR\',\'R960REQ\'\)\" directory=dtbxbackup dumpfile=sapiens.dmp logfile=sapiens.log reuse_d$

$ORACLE_HOME/bin/expdp backuporacle/adlbackupora@CDB1 schemas=vetorh directory=BACKUP_DUMP dumpfile=vetorh.dmp logfile=vetorh.log reuse_dumpfiles=y

$ORACLE_HOME/bin/expdp backuporacle/adlbackupora@CDB1 schemas=sde directory=BACKUP_DUMP dumpfile=sde.dmp logfile=sde.log reuse_dumpfiles=y

$ORACLE_HOME/bin/expdp backuporacle/adlbackupora@CDB1 schemas=redux10 directory=BACKUP_DUMP dumpfile=redux10.dmp logfile=redux10.log reuse_dumpfiles=y
