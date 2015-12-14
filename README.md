##VM Layers
- Oracle 11g Database
- Oracle 12c ASM with asmfd
- Oracle Linux 66

###Oracle 12c ASM with asmfd
- Box template contains 12c Grid software unpacked and installed.
- Provision script 'provision_asm.sh' install ASM and migrates to asmfd

###11g Database 
- The $VERSION variable in the scripts was modified for 11.2.0.4
- A directory oracle11g was created (ignored by .gitignore), 11g database software added to oracle11g/<files>.zip. 
- A synced folder was added to the 11g db software could be unpacked and installed by the provisioning scripts.
  - install_db.sh - installs db software
  - create_db.sh - creates database fred
