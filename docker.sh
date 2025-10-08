sudo sed -i '54i ubuntu ALL=(ALL) NOPASSWD:ALL' /etc/sudoers
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-compose

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service


echo "alias restart='sudo systemctl restart'" > ~/.bash_profile
echo "alias stop='sudo systemctl stop'" >> ~/.bash_profile
echo "alias disable='sudo systemctl disable'" >> ~/.bash_profile
echo "alias dl='docker logs -fn 2000'" >> ~/.bash_profile
echo "alias dc='docker compose'" >> ~/.bash_profile
echo "alias upb='source ~/.bashrc'" >> ~/.bash_profile
echo "upb" >> ~/.bash_profile
. ~/.bash_profile
