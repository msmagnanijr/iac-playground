Vagrant.configure("2") do |config|

  config.vm.box = "fedora/32-cloud-base"

  config.vm.network :public_network

  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.memory = "2048"
    virtualbox.cpus = "2"
  end  

  config.vm.provision :shell do |shell|
      shell.path = "scripts/install_apache.sh"
  end

end
