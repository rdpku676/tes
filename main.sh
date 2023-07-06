apt update
apt install screen -y
apt install sudo -y
sudo adduser aank --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ferry:ferry" | sudo chpasswd
sudo usermod -aG sudo,adm aank
clear
rm -rf ngrok  ngrok.zip  ng.sh ngrok-stable-linux-amd64.zip 
yum install unzip -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip ngrok-stable-linux-amd64.zip
clear
echo "Katacoda Centos Windows 11 by fb.com/thuong.hai.581"
read -p "Paste authtoken here (Copy and Right-click to paste): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp --region eu 30889 &>/dev/null &
clear
echo "===================================="
echo "Install XFCE"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies 
echo "=======25%"
sudo apt install firefox -y
echo "=============50%"
sudo apt-get install -y xrdp
sudo apt-get install -y xfce4-terminal
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "Username : ferry"
echo "Password : ferry"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
rm -rf ngrok.zip xrdp.sh
sleep 43200
