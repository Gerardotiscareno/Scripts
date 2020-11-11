#!/bin/bash

t=$(date +'%H');

if [ $t -ge 0  -a  $t -lt 12  ]
then  hello="Good  Morning"
elif [ $t -ge 12  -a  $t -lt 18  ]
then  hello="Good Afernoon"
else  hello="Good Night"
fi

#figlet  -w80 -f /usr/share/figlet/3d.flf "$hello " | lolcat
#figlet  -w80 -f /usr/share/figlet/3d.flf "GERARDO " | lolcat
#toilet -f smblock --filter border:metal 'Gerardo' | lolcat 

./splash.sh | lolcat
#figlet  -w80 -f /usr/share/figlet/3d.flf "$hello " | lolcat
echo "$hello Gerardo" | cowsay -f eyes | lolcat
