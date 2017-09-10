

sudo bash -c "echo 'deb http://ftp.debian.org/debian jessie-backports main' >> /etc/apt/sources.list"
sudo bash -c "echo 'deb http://ftp.fr.debian.org/debian/ sid main' >> /etc/apt/sources.list"

sudo apt-get -q update > /dev/null
sudo apt-get -q upgrade > /dev/null

sudo apt install python-setuptools -y
sudo apt install python3.4 python3.4-dev python-pip -y
sudo apt install g++ libboost-program-options-dev libboost-dev libbz2-dev zlib1g-dev libexpat1-dev cmake pandoc -y
sudo apt install libosmium2-dev=2.13.1-1 libprotozero-dev  libutfcpp-dev -y

sudo apt install git -y
mkdir -p /srv/osmium-tool
git clone https://github.com/osmcode/osmium-tool/ /srv/osmium-tool/


sudo apt install osmium-tool=1.7.1-1

cd /srv/osmium-tool
make
