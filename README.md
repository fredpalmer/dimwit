dimwit
======

Dynamic Image Manipulation Service with Nginx


Features
=========
Uses the [HttpImageFilterModule](http://nginx.org/en/docs/http/ngx_http_image_filter_module.html) to dynamically process remote images into cropped, rotated and resized derivatives based on remote source images.
Derivative images are created only once per unique url and stored locally.  Duplicate requests are served directly from disk.


Setup (using Ubuntu)
=======
1.  Launch a server, e.g. *Ubuntu Server 14.04 LTS*.  Nothing special except you need ports 22 (to login via ssh) and 8080 to run the service.

2. SSH into the machine and run the following commands:

``` bash
# When you log into the server from the terminal run these commands
sudo mkdir /mnt/media/   # Or whatever you want the server root to be
sudo chown ubuntu:ubuntu /mnt/media
chmod 777 /mnt/media

sudo apt-get install nginx-extras-dbg
# if you get an error uncomment the offending lines in this file and try to reinstall nginx again
# sudo vim /etc/apt/sources.list

curl -O https://raw.githubusercontent.com/fredpalmer/dimwit/develop/nginx.conf
sudo mv nginx.conf /etc/nginx/sites-enabled/
sudo /etc/init.d/nginx restart
```
*That's it!*


Setup (using Docker)
=====

Just run the docker container ondra42/dimwit with Port 80:
```
docker run -d -p 8080:80 ondrejp/dimwit
```

```
docker run -d -p 8080:80 ondrejp/dimwit
```

Usage
=======
```
# resize example
http://<dims-host>/resize/100x100/http://2.bp.blogspot.com/_nm9ySucveA8/TEYgGu9DIgI/AAAAAAAAAO4/XI1q38FFlxw/s1600/unicorns2q.jpg

# crop example
http://<dims-host>/crop/200x200/http://4.bp.blogspot.com/_nm9ySucveA8/TEYgGSJi7sI/AAAAAAAAAOw/XK4VjrHPybw/s1600/unicorns-5-magical-animal.jpg

# rotate example
http://<dims-host>/rotate/90/http://3.bp.blogspot.com/_nm9ySucveA8/TEYgGF9iEWI/AAAAAAAAAOo/uC62nczWcEk/s1600/unicorn1.jpg

