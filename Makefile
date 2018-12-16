say_hello:
	echo 'Hello sweetheart!' $(BASE_DIR)

apt_install_deps:
	sudo apt-get -y upgrade
	sudo apt-get install -y build-essential apt-transport-https curl
	sudo apt-get install -y software-properties-common ca-certificates
	sudo apt-get install -y git htop man unzip vim wget tmux ppp telnet zsh
	sudo apt-get install -y iproute2 iputils-ping iptables traceroute net-tools vtun
	sudo apt-get install -y tcpdump htop apparmor-utils
	sudo apt-get install -y v4l2loopback-dkms v4l2loopback-utils
	sudo apt-get install -y xtightvncviewer simplescreenrecorder flameshot
	sudo apt-get build-dep -y vtun	 


install_docker:
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo apt-key fingerprint 0EBFCD88
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
	sudo apt-get update
	sudo apt-get install docker-ce -y


install_docker_compose:
	sudo curl -L https://github.com/docker/compose/releases/download/1.23.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
