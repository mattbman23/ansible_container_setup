name ?= test
port ?= 22
containerEnginer ?= podman
hostname ?= refiner-attlocal-net

centosBuild:
	${containerEnginer} build -t centossh --no-cache -f ./containerFiles/Dockerfile.centosSSH .

centosRun:
	${containerEnginer} run --name $(name) -d -it --privileged -p 50$(port):22 centossh
  
fedoraBuild:
	${containerEnginer} build -t fedorassh --no-cache -f ./containerFiles/Dockerfile.fedoraSSH .

fedoraRun:
	${containerEnginer} run --name $(name) -d -it -p 50$(port):22 fedorassh
 
clearKnownHosts:
	# echo "" > ~/.ssh/known_hosts 
	ssh-keygen -R '[$(hostname)]:5022'
	ssh-keygen -R '[localhost]:5022'
	ssh-keygen -R '[127.0.0.1]:5022'
	