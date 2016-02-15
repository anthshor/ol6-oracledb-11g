#!/bin/bash

# define the global variables
export ORACLE_SID=fred
export PASSWORD=oracle12
export ASMPWD=Password1#
export VERSION="11.2.0.4"
export ORACLE_HOME=/u01/app/oracle/product/${VERSION}/dbhome_1

sudo -E -H -u oracle $ORACLE_HOME/bin/srvctl status database -d $ORACLE_SID > /dev/null
if [ $? -eq 0 ]; then
	echo "INFO: Database ${ORACLE_SID} exists, skipping database creation."
else
	echo "INFO: Creating database ${ORACLE_SID}..."
	sudo -E -H -u oracle /u01/app/oracle/product/${VERSION}/dbhome_1/bin/dbca -silent -createDatabase -templateName General_Purpose.dbc -gdbName ORCL -sid ORCL -SysPassword change_on_install -SystemPassword manager -emConfiguration NONE -storageType ASM -asmSysPassword change_on_install -diskGroupName DATA -recoveryGroupName FRA -characterSet WE8ISO8859P15 -memoryPercentage 40
	#sudo -E -H -u oracle /u01/app/oracle/product/${VERSION}/dbhome_1/bin/dbca -silent -createDatabase -templateName /vagrant/fred.dbc -gdbName $ORACLE_SID -sid $ORACLE_SID -responseFile NO_VALUE -sysPassword $PASSWORD \
	#-systemPassword $PASSWORD -emConfiguration LOCAL -sysmanPassword $PASSWORD -dbsnmpPassword $PASSWORD -storageType ASM -diskGroupName +DATA -recoveryGroupName +FRA \
	#-characterset WE8ISO8859P1 -obfuscatedPasswords false -sampleSchema false -asmSysPassword $ASMPWD
fi
