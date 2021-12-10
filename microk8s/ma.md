<!-- Headings -->
# To create vagrant vm's for all testing environments(QA,UAT,LT)
## Step-1 : Prerequisites
* *Set up ubuntu server*
## Step-2 : Install virtualbox
<!-- Blockquote -->
<!-- italics -->
```
sudo apt update
sudo apt install virtualbox
```
## Step-3 : Install Vagrant package
* *if you want to install with any version try to include version. you can search version visit "https://www.vagrantup.com/downloads"*
``` 
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install ./vagrant_2.2.9_x86_64.deb
vagrant --version
```
## Step-3 : Clone Vagrantfile from git
```
git clone https://github.com/KaluvalaRamya/MINI-k8s.git
``` 
* *Run the vagrant up command to create and configure the virtual machine as specified in the Vagrantfile*
```
vagrant up
```
