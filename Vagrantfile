# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "quantal64"
  config.vm.box_url = "https://github.com/downloads/roderik/VagrantQuantal64Box/quantal64.box"

  config.vm.network :hostonly, "33.33.33.33"
  
  config.vm.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  config.vm.customize do |vm|
    vm.memory_size = 512
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "my-cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "apparmor"
    chef.add_recipe "ramdisk::create"
    chef.add_recipe "mysql_extra::remove_apparmor"
    chef.add_recipe "mysql::client"
    chef.add_recipe "mysql::server"
    chef.add_recipe "ramdisk"
    chef.add_recipe "mysql_extra"
    chef.add_recipe "mysql_extra::initialize_db"
    chef.add_recipe "mysql_extra::root_any_host"

    chef.json = {
        mysql: {
            server_root_password:   "root",
            server_repl_password:   "root",
            server_debian_password: "root",
            allow_remote_root:       true,
            datadir:                "/tmp/ramdisk"
        }
    }
  end
end