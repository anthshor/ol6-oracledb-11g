##VM Layers
- Oracle 11g Database
- Oracle 12c ASM with asmfd
- Oracle Linux 66

###Oracle 12c ASM with asmfd
- Box template contains 12c Grid software unpacked and installed.
- Provision script 'provision_asm.sh' install ASM and migrates to asmfd

###11g Database 
- updated $VERSION variable in the scripts 
- placed 11g database software in oracle11g/<files>.zip
- install_db.sh - installs db software
- create_db.sh - creates database fred
