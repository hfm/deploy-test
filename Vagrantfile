# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.5.0"

Vagrant.configure("2") do |config|
  config.vm.box = "hfm4/centos-with-docker"

  config.vm.provider :virtualbox do |vb|
    # http://shibayu36.hatenablog.com/entry/2013/08/12/090545
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    # http://d.hatena.ne.jp/hiboma/20140330
    vb.customize ["modifyvm", :id, "--hpet", "on"]
    vb.customize ["modifyvm", :id, "--acpi", "off"]

    vb.customize ["modifyvm", :id, "--nic2", "intnet"]
    vb.customize ["modifyvm", :id, "--intnet2", "internal_network"]

    vb.memory = 512
    vb.cpus = 1
  end

  config.vm.define :manage do |c|
    c.vm.hostname = "manage.deploy.dev"
    c.vm.network :private_network, ip: "192.168.33.10"
  end

  config.vm.define :one do |c|
    c.vm.hostname = "one.deploy.dev"
    c.vm.network :private_network, ip: "192.168.33.11"
  end

  config.vm.define :two do |c|
    c.vm.hostname = "two.deploy.dev"
    c.vm.network :private_network, ip: "192.168.33.12"
  end

  config.vm.provision :puppet do |p|
    p.manifests_path = "manifests"
    p.module_path    = ["modules", "roles"]
    p.manifest_file  = "site.pp"
    p.options = "--verbose --show_diff --detailed-exitcodes"
  end
end
