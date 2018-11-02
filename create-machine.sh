docker-machine create -d generic \
--generic-ssh-user vagrant \
--generic-ssh-key ~/.vagrant.d/insecure_private_key \
--generic-ip-address <IP address of VM> \
--engine-install-url "https://test.docker.com" \
"$1"
