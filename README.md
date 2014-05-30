# docker build issue

I'm in a situation where my Dockerfile builds locally, but fails on docker.io.

## boot2docker

I wasn't able to reproduce the build failure on my box, using `boot2docker`

```
> docker version

Client version: 0.9.0
Go version (client): go1.2.1
Git commit (client): 2b3fdf2
Server version: 0.9.0
Git commit (server): 2b3fdf2
Go version (server): go1.2.1
Last stable version: 0.9.0
```

## precise64 vagrant box

Then I started a precise64 vagrant box, installed docker on it, and I was able to reproduce the same error as docker.io.
But it still strange as it has the exact same docker version

```
vagrant@precise64:~$ sudo docker version

Client version: 0.9.0
Go version (client): go1.2.1
Git commit (client): 2b3fdf2
Server version: 0.9.0
Git commit (server): 2b3fdf2
Go version (server): go1.2.1
Last stable version: 0.9.0
```
