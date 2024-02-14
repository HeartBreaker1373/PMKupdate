#!/bin/bash

#script must be run with elevated privileges i.e. "root"

#define the directory path
folder="/opt/pimpmykali"

#moves to tools directory
cd /opt 

#check if the pimpmykali directory exists
if [ -d "$folder" ]; then
	echo "Folder exists. Deleting it..."
	rm -rf "$folder"
fi

#proceed with update for PMK
echo "Proceeding with Pimp My Kali Update..."

#gets new PMK version
git clone https://github.com/Dewalt-arch/pimpmykali.git #gets new PMK

#changes to new directory
cd pimpmykali

#runs PMK
./pimpmykali.sh
