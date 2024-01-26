 #!/bin/bash

echo "==========================>		STEP1"
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

echo "==========================>		STEP2"
sudo apt-get update
echo "==========================>		STEP3"
sudo apt-get install ca-certificates curl gnupg
echo "==========================>		STEP4"
sudo install -m 0755 -d /etc/apt/keyrings
echo "==========================>		STEP5"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "==========================>		STEP6"
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "==========================>		STEP7"
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "==========================>		STEP8"
sudo apt-get update
echo "==========================>		STEP9"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "==========================>		INSTALL PORTAINER"
sudo docker run -d --name portainer_ce --privileged --restart unless-stopped -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v /home/pi/data/portainer:/data portainer/portainer-ce
echo "==========================>		COMPLETE"

