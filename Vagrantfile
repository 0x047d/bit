# -*- mode: ruby -*-
# vi: set ft=ruby :

require './src/reboot'

Vagrant.configure('2') do |config|

  config.vm.define :BitVM do |t| end
  config.vm.box = ENV['DeOS_VM_BOX']
  config.vm.box_check_update = true

  config.ssh.paranoid = true
  if ARGV[0] == 'ssh' ? config.ssh.shell = ENV['DeOS_VM_SHELL_SSH']
                      : config.ssh.shell = ENV['DeOS_VM_SHELL_DEFAULT']
  end

  config.vm.synced_folder ".", "/vagrant",
    disabled:true
  config.vm.synced_folder ".", ENV['DeOS_VM_PATH'],
    create: true

end # Vagrant.configure('2') do |config|
