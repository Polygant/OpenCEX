if [ $(dpkg-query -W -f='${Status}' docker-ce 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "Docker not found, install docker..."
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release > /dev/null 2>&1
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor --yes -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update > /dev/null 2>&1
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io git docker-compose-plugin > /dev/null 2>&1
    sudo systemctl enable docker > /dev/null 2>&1
    sudo systemctl start docker > /dev/null 2>&1
    echo "Docker has been successfully installed."
else
    echo "Docker already installed."
fi

mkdir /app/opencex -p
cd /app/opencex || exit
git clone -b stage https://github.com/Polygant/OpenCEX-backend.git ./backend
git clone -b stage https://github.com/Polygant/OpenCEX-frontend.git ./frontend
git clone -b stage https://github.com/Polygant/OpenCEX-static.git ./nuxt

