#!/bin/bash -e

#Install basic open-ssh server package
sudo apt-get install openssh-server -y || { echo "error" && exit 1; }
echo "generating keys now ..."

#Basic for loop to auto-agree to the defaults of ssh-keygen
for item in ssh-keygen
do
yes "" | "$item" || { echo "error" && exit 1; }  #this is where the magic starts with the auto-agree  
done

echo "Success!"
exit 0
