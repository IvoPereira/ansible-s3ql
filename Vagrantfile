# -*- mode: ruby -*-
# vi: set ft=ruby ts=2 sw=2 tw=0 et :

# For Vagrant to support hostname & network settings in Alpine, install:
#    `vagrant plugin install vagrant-alpine`
#

boxes = [
  # {
  #   :name => "ubuntu-1204",
  #   :box => "bento/ubuntu-12.04",
  #   :ip => '10.0.0.11',
  #   :cpu => "50",
  #   :ram => "256"
  # },
  # {
  #   :name => "ubuntu-1404",
  #   :box => "bento/ubuntu-14.04",
  #   :ip => '10.0.0.12',
  #   :cpu => "50",
  #   :ram => "256"
  # },
  # {
  #   :name => "ubuntu-1604",
  #   :box => "bento/ubuntu-16.04",
  #   :ip => '10.0.0.13',
  #   :cpu => "50",
  #   :ram => "256"
  # },
  # {
  #   :name => "debian-7",
  #   :box => "bento/debian-7",
  #   :ip => '10.0.0.14',
  #   :cpu => "50",
  #   :ram => "256"
  # },
  # {
  #   :name => "debian-8",
  #   :box => "bento/debian-8",
  #   :ip => '10.0.0.15',
  #   :cpu => "50",
  #   :ram => "256"
  # },
  {
    :name => "debian-9",
    :box => "chriswayg/debian-9.4.0-x86_64",
    :ip => '10.0.0.16',
    :cpu => "50",
    :ram => "512"
  },
  {
    :name => "alpine",
    :box => "chriswayg/alpine-3.7-x86_64",
    :ip => '10.0.0.17',
    :cpu => "50",
    :ram => "512"
  },
]

role = File.basename(File.expand_path(File.dirname(__FILE__)))

# The Alpine box uses Python 3 for s3ql.
Vagrant.configure("2") do |config|
    boxes.each do |box|
        config.vm.define box[:name] do |vms|
            vms.vm.box = box[:box]
            vms.vm.hostname = "#{role}-#{box[:name]}"

            vms.vm.provider "virtualbox" do |v|
              v.customize ["modifyvm", :id, "--cpuexecutioncap", box[:cpu]]
              v.customize ["modifyvm", :id, "--memory", box[:ram]]
            end

            vms.vm.network :private_network, ip: box[:ip]

            vms.vm.provision :ansible do |ansible|
              ansible.playbook = "tests/vagrant.yml"
              ansible.verbose = "vv"
              ansible.compatibility_mode = "2.0"
              ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
            end
        end
    end
end
