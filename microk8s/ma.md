<!-- Headings -->
# To create vagrant vm's for all testing environments(QA,UAT,LT)
## Prerequisites
* *physical server of ubuntu*
* *Check if the virtual box and vagrant installed or not. if not, follow the below steps*
## Step-1 : Install virtualbox
<!-- Blockquote -->
<!-- italics -->
```
sudo apt update
sudo apt-get install virtualbox-6.1
```
## Step-3 : Install Vagrant package
* *if you want to install with any version try to include version. you can search version visit "https://www.vagrantup.com/downloads"*
``` 
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb
vagrant --version
```
## Step-3 : Create Vagrantfile and copy the code in to it
```
touch Vagrantfile && sudo nano Vagrantfile
```
* *copy below code to Vagrantfile before check and configure the virtual machine specifications*
```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = "sloopstash-workstation"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.99.100"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.ssh.username = "vagrant"
  config.ssh.private_key_path=["~/.vagrant.d/insecure_private_key"]
  config.ssh.insert_key = false
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
    vb.cpus = "2"
    vb.name = "sloopstash-workstation"
  end
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
  SHELL
end
``` 
* *Run the vagrant up command to create and configure the virtual machine as specified in the Vagrantfile*
```
vagrant up
```
