Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "dockerbridged"
  #config.vm.network "private_network", ip: "192.168.33.10"
  #config.vm.network "private_network", type: "dhcp"
  config.vm.network "public_network", type: "dhcp"

  config.vm.provider "virtualbox" do |v|
    v.memory = "2048"
    # Change the network adapter type and promiscuous mode
    v.customize ['modifyvm', :id, '--nictype1', 'Am79C973']
    v.customize ['modifyvm', :id, '--nicpromisc1', 'allow-all']
    v.customize ['modifyvm', :id, '--nictype2', 'Am79C973']
    v.customize ['modifyvm', :id, '--nicpromisc2', 'allow-all']
  end

  # Install bridge-utils
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get -y install bridge-utils
  SHELL
end
