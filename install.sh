#!/bin/bash

if [ ! -d "/root/tools" ]; then
    mkdir "/root/tools"
fi

cd /root/tools

#install pip3
apt install python3-pip -y

#install unzip
apt install unzip -y

#Install Java jre
apt install default-jre -y

#install seclists
wget -c https://github.com/danielmiessler/SecLists/archive/master.zip -O SecList.zip
unzip -f SecList.zip
rm -f SecList.zip

#install dirsearch
git clone https://github.com/maurosoria/dirsearch.git
pip3 install -r dirsearch/requirements.txt

#install ffuf
go install github.com/ffuf/ffuf@latest

#install feroxbuster
wget https://github.com/epi052/feroxbuster/releases/download/v2.6.1/x86-linux-feroxbuster.zip
unzip x86-linux-feroxbuster.zip
chmod +x feroxbuster
cp feroxbuster /usr/local/bin/

#install subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

#install altdns
pip3 install py-altdns==1.0.2

#install sublist3r
git clone https://github.com/aboul3la/Sublist3r.git
pip install -r Sublist3r/requirements.txt

#instal waybackurls
go install github.com/tomnomnom/waybackurls@latest

#install gau
go install github.com/lc/gau/v2/cmd/gau@latest

#install uro
pip3 install uro

#install dotdotpwn
https://github.com/wireghoul/dotdotpwn.git

#install gf
go install github.com/tomnomnom/gf@latest

#install anew
go install -v github.com/tomnomnom/anew@latest

#install httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

#install httprobe
go install github.com/tomnomnom/httprobe@latest

#install chromium
snap install chromium

#install aquatone
wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
unzip aquatone_linux_amd64_1.7.0.zip

#install unfurl
go install github.com/tomnomnom/unfurl@latest

#install byp4xx
git clone https://github.com/lobuhi/byp4xx.git
chmod u+x byp4xx/byp4xx.py

#install ohmybackup
git clone https://github.com/tismayil/ohmybackup.git
go build ohmybackup/ohmybackup.go

#install gup
go install github.com/channyein1337/gup@latest

#install qsreplace
go install github.com/tomnomnom/qsreplace@latest

#arjun
pip3 install arjun

# js-beautifier
pip3 install jsbeautifier

#install linkfinder
git clone https://github.com/GerbenJavado/LinkFinder.git
python LinkFinder/setup.py install


#install secretFinder
git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
pip install -r secretfinder/requirements.txt

#install gmapsapiscanner
git clone https://github.com/ozguralp/gmapsapiscanner.git

#install dalfox
go install github.com/hahwul/dalfox/v2@latest

#install kxss
go install github.com/Emoe/kxss@latest

#install notify
go install -v github.com/projectdiscovery/notify/cmd/notify@latest

#install crunch
apt install crunch -y

#install nikto
apt install nikto -y

#install nmap
apt install nmap -y

#install nuclei
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

#install masscan
apt-get --assume-yes install git make gcc
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make install
cd ../

#install hakoriginfinder
go install github.com/hakluke/hakoriginfinder@latest

#install tew
go install github.com/pry0cc/tew@latest

#install sdlookup
go install github.com/j3ssie/sdlookup@latest

#install metabigor
GO111MODULE=on go install github.com/j3ssie/metabigor@latest

#install mapcidr
GO111MODULE=on go install -v github.com/projectdiscovery/mapcidr/cmd/mapcidr@latest

#install uncover
go install -v github.com/projectdiscovery/uncover/cmd/uncover@latest

#install dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

#install nrich
wget https://gitlab.com/api/v4/projects/33695681/packages/generic/nrich/latest/nrich_latest_amd64.deb
dpkg -i nrich_latest_amd64.deb

#install sqlmap
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev


# install IIS_Short_Scanner
git clone https://github.com/irsdl/IIS-ShortName-Scanner.git

#install assetNote wordlist
wget -r --no-parent -R "index.html*" https://wordlists-cdn.assetnote.io/data/ -nH

#install jhaddix wordlist content_discovery_all.txt
wget https://gist.github.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt

#install jhaddix wordlist all.txt
wget https://gist.github.com/jhaddix/86a06c5dc309d08580a018c66354a056/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt



cp ~/go/bin/* /usr/local/bin

echo 'alias dirsearch="python3 ~/tools/dirsearch/dirsearch.py"' >> ~/.bashrc
echo 'alias sublist3r="python3 ~/tools/Sublist3r/sublist3r.py"' >> ~/.bashrc
echo 'alias byp4xx="~/tools/byp4xx/byp4xx.py"' >> ~/.bashrc
echo 'alias linkfinder="python3 ~/tools/LinkFinder/linkfinder.py"' >> ~/.bashrc
echo 'alias secretfinder="python3 ~/tools/secretfinder/SecretFinder.py"' >> ~/.bashrc
echo 'alias gmapsapiscanner="python3 ~/tools/gmapsapiscanner/maps_api_scanner_python3.py"' >> ~/.bashrc
echo 'alias sqlmap="python3 ~/tools/sqlmap-dev/sqlmap.py"' >> ~/.bashrc
echo 'alias aquatone="~/aquatone -chrome-path /snap/bin/chromium"' >> ~/.bashrc
echo 'alias ohmybackup="~/tools/ohmybackup/ohmybackup"' >> ~/.bashrc
source ~/.bashrc

echo "DONE!"

echo "???? H A C K   T H E   P L A N E T  ! ! ! ????"

