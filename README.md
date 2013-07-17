dimwit
======

Dynamic Image Manipulation Service


Setup (using Ubuntu)
=======
1.  Launch a server, e.g. *Ubuntu Server 12.04.2 LTS*

Nothing special except you need ports 22 (to login via ssh) and 8080 to run the service.

``` bash
# When you log into the server from the terminal run these commands
mkdir /mnt/media/   # Or whatever you want the server root to be
sudo chown ubuntu:ubuntu /mnt/media
chmod 777 /mnt/media

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install nginx-extras-dbg
# if you get an error uncomment the offending lines in this file and try to reinstall nginx again
# sudo vim /etc/apt/sources.list

curl -O https://raw.github.com/fredpalmer/dimwit/develop/nginx.conf
sudo mv nginx.conf /etc/nginx/sites-enabled/
sudo /etc/init.d/nginx restart
```

You should be running now.


Usage
=======
```
# resize example
http://<dims-host>:8080/resize/100x100/http://2.bp.blogspot.com/_nm9ySucveA8/TEYgGu9DIgI/AAAAAAAAAO4/XI1q38FFlxw/s1600/unicorns2q.jpg

# crop example
http://<dims-host>:8080/crop/200x200/http://4.bp.blogspot.com/_nm9ySucveA8/TEYgGSJi7sI/AAAAAAAAAOw/XK4VjrHPybw/s1600/unicorns-5-magical-animal.jpg

# rotate example
http://<dims-host>:8080/rotate/90/http://3.bp.blogspot.com/_nm9ySucveA8/TEYgGF9iEWI/AAAAAAAAAOo/uC62nczWcEk/s1600/unicorn1.jpg
```
