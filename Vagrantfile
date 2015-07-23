
BOX_NAME = ENV['VAGRANT_BOX_NAME'] || 'ubuntu/trusty64'

Vagrant.configure(2) do |config|

  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.sudo = true
      ansible.groups = {
        "sensu_server_client" => ["sensu-server-client"],
        # "sensu_server"        => ["sensu-server"],
        "sensu_client"        => ["sensu-client"]
      }
      # ansible.inventory_path = "hosts"
  end

  config.vm.define 'sensu-server-client' do |a|
    a.vm.box = BOX_NAME
    a.vm.network :private_network, ip: "192.168.60.2"
    a.vm.hostname = 'sensu-server-client'
  end

  # config.vm.define 'sensu-server' do |a|
  #   a.vm.box = BOX_NAME
  #   a.vm.network :private_network, ip: "192.168.60.3"
  #   a.vm.hostname = 'sensu-server'
  # end
  #
  config.vm.define 'sensu-client' do |a|
    a.vm.box = BOX_NAME
    a.vm.network :private_network, ip: "192.168.60.4"
    a.vm.hostname = 'sensu-client'
  end

end
