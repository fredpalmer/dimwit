dimwit
======

Dynamic Image Manipulation Service with Nginx


Features
=========
Uses the [HttpImageFilterModule](http://wiki.nginx.org/HttpImageFilterModule) to dynamically process remote images into cropped, rotated and resized derivatives based on remote source images.
Derivative images are created only once per unique url and stored locally.  Duplicate requests are served directly from disk.

Setup
=====
Just run the docker container asgoodasnew/dimwit with Port 80:
```
docker run -d -p 80:80 asgoodasnew/dimwit
```

You can also mount /mnt/media to the host, make sure www-data does have write-permissions:

```
docker run -d -p 80:80 -v /imagedata:/mnt/media asgoodasnew/dimwit
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
```
