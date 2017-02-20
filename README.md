# Git repository for OS class


### docker build image

```
sudo docker -t <image_name>:<tag> build 
```

### docker run

```
sudo docker run -i -t -p <port_you_want>:22 -v <path_to_pintos>:/etc/skel <image_name>:<tag>
```
