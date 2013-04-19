Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 4222, 4222 # NATS
  config.vm.forward_port 5678, 5678 # DirectoryServerV2

  config.vm.share_folder "dea_repo", "/cf-deploy/dea", "./dea_ng"
  config.vm.share_folder "uaa_repo", "/cf-deploy/uaa", "./uaa"
  config.vm.share_folder "cc_ng_repo", "/cf-deploy/cc_ng", "./cloud_controller_ng"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path    = ["./chef/cookbooks", "./chef"]
    chef.provisioning_path = "/var/vagrant-chef"
    chef.log_level         = :debug

    chef.add_recipe "apt"
    chef.add_recipe "git"
    chef.add_recipe "dea::packages"
    chef.add_recipe "dea::dea"
    chef.add_recipe "warden::install"
    chef.add_recipe "warden::install_rootfs"
    chef.add_recipe "uaa::repositories"
    chef.add_recipe "uaa::packages"
    chef.add_recipe "uaa::install"
    chef.add_recipe "cc_ng::packages"
    chef.add_recipe "cc_ng::install"
  end
end
