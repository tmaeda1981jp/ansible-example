# -*- mode: ruby -*-

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'centos65'
  config.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box'

  config.vm.define :'ansible-test-server' do |host|
    host.vm.hostname = 'ansible-test-server'
    host.vm.network :private_network, ip: '192.168.100.10', netmask: '255.255.255.0'
    host.vm.network :public_network, bridge: 'en0: Ethernet'
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'example.yml'
    ansible.inventory_path = 'hosts'
    ansible.limit = 'all'
  end

  config.vm.synced_folder 'shared/', '/shared', nfs: true
  config.ssh.forward_agent = true
end
