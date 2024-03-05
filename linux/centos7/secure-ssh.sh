#secure-ssh.sh
#author kalvin-zachhuber
#creates a new ssh user using $1 paramater
#adds a public key from the local repo or curled form from the remote repo
#removes roots ability to ssh in
echo -n "Enter User: "
read user
useradd -m -d /home/$user -s /bin/bash $user
mkdir home/$user/.ssh
cp kalvin-zachhuber/kalvin-zachhuber-SysAdmin265-Spr2024/linux/public-keys/id_rsa.pub /home/$user/.ssh/authorized_keys
chmod 700 /home/$user/.ssh
chmod 600 /home/$user/.shh/authorized_keys
chown -r $user:$user /home/$user/.ssh 
