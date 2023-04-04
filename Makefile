serv-1: 
	ssh -i Ubuntu-Main-server-brQcC205.pem ubuntu@95.163.214.47

serv-2: 
	ssh -i Ubuntu-Main-server-2-GjudHdli.pem ubuntu@89.208.197.225

serv-3: 
	ssh -i Ubuntu-Main-server-3-hIWUW6KN.pem ubuntu@5.188.140.11

load-balancer:
	ssh -i Ubuntu-Load-balancer-7iFujsDZ.pem ubuntu@89.208.199.246

remove-docker:
	sudo apt-get remove docker docker-engine docker.io containerd runc

install-docker:remove-docker
	bash ./scripts/installDocker.sh

install-go:
	sudo apt install snap && sudo snap install go --classic

# sudo snap refresh go --channel=1.20/stable --classic