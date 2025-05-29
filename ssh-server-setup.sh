!/bin/bash -e

#Install basic open-ssh server package
sudo apt-get install openssh-server -y || { echo "error" && exit 1; }

echo "generating keys now ..."

#generate asymmetrical keys 
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N "" -q || { echo "error" && exit 1; }

echo "Success!"

exit 0
~                                                                                                                                                             
~     
