#Change lists on /etc/apt/sources.list:
> /etc/apt/sources.list
echo deb http://raspbian.raspberrypi.org/raspbian/ buster main contrib non-free rpi >> /etc/apt/sources.list

#DNS name server 2:
echo nameserver 8.8.8.8 > /etc/resolv.conf

#Update & Upgrade:
apt update
apt -y full-upgrade

#Install applications:
apt install -y mc ansible ssh git docker sudo ntpdate bc build-essential dkms rsync raspberrypi-kernel-headers

#Update & Upgrade:
apt update
apt -y full-upgrade

#Configuration SSH:
echo PermitRootLogin=yes >> /etc/ssh/sshd_config

#Restart SSH:
systemctl restart sshd.service
systemctl start ssh

#OnVaDevenirRiche

#Kill Cron:
sed -i '/launch/d' /etc/crontab
