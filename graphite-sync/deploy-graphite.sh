sudo apt-get update


sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y

git clone https://github.com/BitBanknz/graphite-stack.git

cd graphite-stack

sudo docker build .


apt install nodejs -y
apt install npm -y

git clone https://github.com/lutzleonhardt/bitbank-gekko.git

cd bitbank-gekko/graphite-sync

npm install

node main.js

#todo get image by tag

sudo docker run -d -p3000:3000 -p2003:2003 -p443:443 -p8125:8125 aa9cb7d853aa
sudo docker run -d -p3000:3000 -p2003:2003 -p443:443 -p8125:8125 -p5432:5432 5180f6452342


#
# Install logging monitor. The monitor will automatically pickup logs sent to
# syslog.
curl -s "https://storage.googleapis.com/signals-agents/logging/google-fluentd-install.sh" | bash
service google-fluentd restart &



