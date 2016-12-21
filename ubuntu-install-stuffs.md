# Ubuntu Stuffs on Virtual Box

## Oracle Java Installation
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
```
Check this [out](https://launchpad.net/~webupd8team/+archive/ubuntu/java) for details.

## Static Network Setup
1. Adapter 1 as NAT
1. Adapter 2 as Host-only Adapter 'vboxnet0'
1. Visit [here](http://askubuntu.com/questions/168033/how-to-set-static-routes-in-ubuntu-server)
1. Setup like this (dns-nameservers set to google dns, you can change this as needed)
```
auto eth1
iface eth1 inet static
  address         your.desired.ip.address
  netmask         255.255.255.0
  network         your.own.network.0
  broadcast       your.own.network.255
  dns-nameservers 8.8.8.8,8.8.4.4
```
1. Restart to take effect
```
sudo shutdown -r now
```

## Scala Installation
Got it from [here](https://gist.github.com/osipov/c2a34884a647c29765ed)
```
sudo apt-get remove scala-library scala
sudo wget www.scala-lang.org/files/archive/scala-2.10.4.deb
sudo dpkg -i scala-2.10.4.deb
sudo apt-get update
sudo apt-get install scala
```
Just change the version depending on your required version.

## MySQL Installation
Visit [this](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-14-04)
