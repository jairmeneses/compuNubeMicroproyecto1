# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
  end

  config.vm.define :haproxy do |haproxy|
    haproxy.vm.box = "bento/ubuntu-20.04"
    haproxy.vm.hostname = "haproxy"
    haproxy.vm.network :private_network, ip: "192.168.90.2"
    haproxy.vm.provision "shell", path: "script_puppet.sh"
    haproxy.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "haproxy.pp"
      puppet.module_path = "puppet/modules"
    end
  end

  config.vm.define :esclavo do |esclavo|
    esclavo.vm.box = "bento/ubuntu-20.04"
    esclavo.vm.hostname = "esclavo"
    esclavo.vm.network :private_network, ip: "192.168.90.3"
    esclavo.vm.provision "shell", path: "script_puppet.sh"
    esclavo.vm.provision :puppet do |puppet|
      puppet.manifests_path = "puppet/manifests"
      puppet.manifest_file = "esclavo.pp"
      puppet.module_path = "puppet/modules"
    end
  end
end
