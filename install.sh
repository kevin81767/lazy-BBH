#!/bin/bash

mkdir ~/tools
cd tools

apt install unzip -y
#install dirsearch
git clone https://github.com/maurosoria/dirsearch.git
pip3 install -r dirsearch/requirements.txt

#install ffuf
go install github.com/ffuf/ffuf@latest

#install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

#install sublist3r
git clone https://github.com/aboul3la/Sublist3r.git
pip install -r Sublist3r/requirements.txt

#instal waybackurl
go install github.com/tomnomnom/waybackurls@latest

#install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

#install httprobe
go install github.com/tomnomnom/httprobe@latest

#install unfurl
go install github.com/tomnomnom/unfurl@latest

#install byp4xx
git clone https://github.com/lobuhi/byp4xx.git
chmod u+x byp4xx/byp4xx.py

#install qsreplace
go install github.com/tomnomnom/qsreplace@latest


#arjun
pip3 install arjun

#install linkfinder
git clone https://github.com/GerbenJavado/LinkFinder.git
python LinkFinder/setup.py install


#install secretFinder
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
pip install -r secretfinder/requirements.txt

#install dalfox
go install github.com/hahwul/dalfox/v2@latest

#install notify
go install -v github.com/projectdiscovery/notify/cmd/notify@latest


#install nikto
apt install -y nikto

#install nmap
apt install -y nmap

#install masscan
apt-get --assume-yes install git make gcc
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make install
cd ../


#install metabigor
GO111MODULE=on go install github.com/j3ssie/metabigor@latest

#install mapcidr
GO111MODULE=on go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

#install dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

#install nrich
wget https://gitlab.com/api/v4/projects/33695681/packages/generic/nrich/latest/nrich_latest_amd64.deb
dpkg -i nrich_latest_amd64.deb

#install sqlmap
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev

#install seclists
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip
unzip SecList.zip
rm -f SecList.zip

#install assetNote wordlist
wget -r --no-parent -R "index.html*" https://wordlists-cdn.assetnote.io/data/ -nH




echo "Copy all go files in /usr/local/bin"
cp ~/go/bin/* /usr/local/bin

echo 'alias dirsearch="python3 ~/tools/dirsearch/dirsearch.py"' >> ~/.bashrc
echo 'alias sublist3r="python3 ~/tools/Sublist3r/sublist3r.py"' >> ~/.bashrc
echo 'alias byp4xx="~/tools/byp4xx/byp4xx.py"' >> ~/.bashrc
echo 'alias linkfinder="python3 ~/tools/LinkFinder/linkfinder.py"' >> ~/.bashrc
echo 'alias secretfinder="python3 ~/tools/secretfinder/SecretFinder.py"' >> ~/.bashrc
echo 'alias sqlmap="python3 ~/tools/sqlmap-dev/sqlmap.py"' >> ~/.bashrc

