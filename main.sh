apt update
apt install screen -y
apt install sudo -y
sudo adduser aank --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "ferry:ferry" | sudo chpasswd
sudo usermod -aG sudo,adm aank
clear
rm -rf ngrok  ngrok.zip  ng.sh 
wget -O ng.sh https://bit.ly/GCngr0k
chmod +x ng.sh
./ng.sh
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
nohup ./ngrok tcp --region $CRP 3389
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
