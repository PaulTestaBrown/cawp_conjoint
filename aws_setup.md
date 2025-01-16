wget https://download.libsodium.org/libsodium/releases/libsodium-1.0.20-stable.tar.gz

ls

tar -xf libsodium-1.0.20-stable.tar.gz

ls

cd libsodium-stable

sudo yum groupinstall "Development Tools"


./configure
make && make check
sudo make install
ldconfig

sudo yum install R

sudo yum install rstudio

#Create Swap file memory to avoid using bigger instance
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=2048
sudo /sbin/mkswap /var/swap.1
sudo /sbin/swapon /var/swap.1
sudo sh -c 'echo "/var/swap.1 swap swap defaults 0 0 " >> /etc/fstab'

wget https://download2.rstudio.org/server/rhel8/x86_64/rstudio-server-rhel-2024.09.1-394-x86_64.rpm

sudo yum install rstudio-server-rhel-2024.09.1-394-x86_64.rpm