cd /etc/yum.repos.d
# mv CentOS-Base.repo CentOS-Base.repo.org
# wget -q -N --no-check-certificate -O CentOS-Base.repo https://raw.githubusercontent.com/Mango-git-dev/Cent/main/CentOS-Base.repo
sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/*.repo

sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/*.repo

sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/*.repo

echo "sslverify=false" >> /etc/yum.conf
sudo yum clean all
cd ~/
echo "done Phí 5 chục"
