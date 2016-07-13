#!/bin/sh

cd ~
wget https://raw.githubusercontent.com/atrp/dsltd/master/Zoiper_3.3_Linux_Free_64Bit.run
chmod +x Zoiper_3.3_Linux_Free_64Bit.run
./Zoiper_3.3_Linux_Free_64Bit.run --mode unattended --unattendedmodeui minimal
