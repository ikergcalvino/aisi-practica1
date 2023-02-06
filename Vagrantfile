# -*- mode: ruby -*-
# vi: set ft=ruby :
require_relative 'provisioning/vbox.rb'
VBoxUtils.check_version('7.0.6')
Vagrant.require_version ">= 2.3.4"

class VagrantPlugins::ProviderVirtualBox::Action::Network
  def dhcp_server_matches_config?(dhcp_server, config)
    true
  end
end

Vagrant.configure("2") do |config|
    config.vm.box = 
    config.vm.hostname = "XXX-aisi2223-docker"
    config.vm.network "XXX", guest: XXX, host: XXX

    config.vm.provider "virtualbox" do |vb|
	vb.name = "AISI-P1-#{config.vm.hostname}"
	vb.cpus = 2
	vb.memory = 2048
	vb.gui = false
    end
end
