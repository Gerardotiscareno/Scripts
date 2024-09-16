################################################
### First update and Upgrade
################################################
echo "Starting the update and upgrade"

sudo -- sh -c "apt update && apt upgrade"

echo "Update and upgrade completed!!!"

sudo -- sh -c "apt install synaptic"

################################################
### Customization
################################################
echo "Installing customization"

sudo -- sh -c "apt install cmatrix figlet lolcat latte-dock cowsay fortune toilet vlc "

. /etc/os-release
sudo apt install -t ${VERSION_CODENAME}-backports cockpit

################################################
###  Tools
################################################
echo "Installing tools"

sudo -- sh -c "apt install rar unrar p7zip-full p7zip-rar terminator net-tools "

################################################
###  laptop utils
################################################

sudo --sh -c "apt install laptop-mode-tools"

sudo --sh -c "apt-get install tlp tlp-rdw"
sudo --sh -c "systemct1 enable tlp"

################################################
###  Installing Timeshift
################################################
sudo --sh -c "add-apt-repository -y ppa:teejee2008/ppa"
sudo --sh -c "apt update"
sudo --sh -c "apt install timeshift"

################################################
###  Cleaning the system
################################################

sudo --sh -c "apt autoclean"
sudo --sh -c "apt clean"
sudo --sh -c "apt autoremove"

################################################
### Creating Files alias and Hello
################################################

file_location=hello.sh
if [ -e $policy ]; then
  echo "File $1.json already exists!"
else
  cat > $file_location <<EOF
#!/bin/bash

t=$(date +'%H');

if [ $t -ge 0  -a  $t -le 13  ]
then  hello="Good  Morning"
elif [ $t -ge 12  -a  $t -le 18  ]
then  hello= "Good Afernoon"
else  hello= "Good Night"
fi

#figlet  -w80 -f /usr/share/figlet/3d.flf "$hello " | lolcat
#figlet  -w80 -f /usr/share/figlet/3d.flf "GERARDO " | lolcat
#toilet -f smblock --filter border:metal 'Gerardo' | lolcat 

echo "$hello " | cowsay -f daemon | lolcat
EOF

file_location=/home/test/$1.json
if [ -e $policy ]; then
  echo "File $1.json already exists!"
else
  cat > $file_location <<EOF
# update our debian/ubuntu box
alias update='sudo -- sh -c "apt update && apt upgrade"'
 
# make grep output colorful 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
 
# netstat with more details  
#aliae vmstat='vmstat -na'

# set list files on detail
alias lt='ls -ltra' 
alias la='ls -A'

#Docker commands
#alias 
EOF
