say_hello:
	echo 'Hello sweetheart!' $(BASE_DIR)

apt_install:
	sudo apt-get -y upgrade
	sudo apt-get install -y build-essential apt-transport-https curl
	sudo apt-get install -y software-properties-common ca-certificates
	sudo apt-get install -y git htop man unzip vim wget tmux ppp telnet zsh
	sudo apt-get install -y iproute2 iputils-ping iptables traceroute net-tools vtun
	sudo apt-get install -y tcpdump htop apparmor-utils
	sudo apt-get install -y v4l2loopback-dkms v4l2loopback-utils
	sudo apt-get install -y xtightvncviewer simplescreenrecorder flameshot
	sudo apt-get build-dep -y vtun	 

install_java:
	sudo add-apt-repository ppa:webupd8team/java
	sudo apt update
	sudo apt-get -y install oracle-java8-installer

install_docker:
	sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo apt-key fingerprint 0EBFCD88
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
	sudo apt-get update
	sudo apt-get install docker-ce -y


install_docker_compose:
	sudo curl -L https://github.com/docker/compose/releases/download/1.23.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose


git-config-singer:
	git config --global user.name "Andrey Popov"
	git config --global user.email andrppv@gmail.com
	git config submodule.recurse true	
	git config --global credential.helper "cache --timeout=36000" # can set 'git config credential.helper store' if like
	git config --global core.editor "vim"

ssh-config-singer:
	echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5Irx0hzL4V4iqWb4OA0aPg6xy0hGGpBT11AThlvl5SaSO3g7scD3ufaliRi7NvbBRWlGdWiNte9BiXhCtzRqWI84XrAZsFAqXay77A4JYpxWwc26lNknCabObLqWmGTk7YIm1Rrii7JbNnutGMv/cJPTab5CQT/ZaJR/cjWwBViMe86VAj6OfRoOl2nUhxxtjB2D5HNF8MgtvwE6SzfNHt+oiddoOKHswLge1aEFRKFEtfZuTzX9VqcEtgdtjfFASPlP9iFS5XRYSATu52UtZp6ZYt6kp6gi339xWKcFBtZgkDS5pDXlkpxSSRmfZxWrikH7GSCx5WI9XQ7MwxBMT singer@earth" >> ~/.ssh/authorized_keys

yum_install:
	sudo yum install tmux zsh
