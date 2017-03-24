# -*- mode: ruby -*-
# vi: set ft=ruby :

require './src/reboot'

Vagrant.configure("2") do |config|
  config.vm.define :BitVM do |t| end
  config.vm.box = ENV['VM_BOX']
  config.vm.box_check_update = true
  config.ssh.paranoid = true
  config.ssh.shell = ENV['VM_SHELL']
  config.vm.synced_folder ".", "/vagrant", disabled:true
  config.vm.synced_folder ".", ENV['VM_PATH']
end
