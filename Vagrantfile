
BOX_NAME = ENV['VAGRANT_BOX_NAME'] || 'ubuntu/trusty64'

Vagrant.configure(2) do |config|
  config.vm.box = BOX_NAME
  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.sudo = true
      # ansible.inventory_path = "hosts"
  end

end
