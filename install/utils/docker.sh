echo "DOCKER"
printf "\033[31mEste texto será vermelho\033[0m\n"
printf -P "%F{red}Este texto será vermelho%f"
echo -e "\033[31mEste texto será vermelho\033[0m"




# # Works for ubuntu 22.04
# # Please pay attention that it might require some changes in this file in order to work with other Operating Systems

# # Add Docker's official GPG key:
# sudo apt-get update
# sudo apt-get install ca-certificates curl
# sudo install -m 0755 -d /etc/apt/keyrings
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
# sudo chmod a+r /etc/apt/keyrings/docker.asc

# # Add the repository to Apt sources:
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update

# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# # Post install
# # remove line below if no docker group is automatically created
# # sudo groupadd docker 
# sudo usermod -aG docker $USER
# newgrp docker

# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service
