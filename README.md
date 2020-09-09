## Author's Environments
- VirtualBox: 6.1.14
- Vagrant: 2.2.10
- Vagrant box: centos/7(v2004.01)
- docker: 19.03.11
- docker-compose: 1.21.2

## Setup docker & docker-compose
```
$ sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
$ sudo yum update -y
$ sudo yum install -y yum-utils
$ sudo yum groupinstall -y "Development Tools"
$ sudo yum install -y vim git gcc make curl curl-devel wget zlib zlib-devel bzip2 bzip2-devel
$ sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
$ sudo yum update -y
$ sudo yum remove -y docker docker-client docker-common docker-engine
$ sudo yum install -y docker-ce docker-ce-cli containerd.io
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.27.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
$ sudo systemctl start docker
$ sudo systemctl enable docker
$ sudo visudo
```
    ```
    #Defaults    secure_path = /sbin:/bin:/usr/sbin:/usr/bin
    Defaults    env_keep += "PATH"
    ```

## Run Services
```
$ git clone https://github.com/skagaya-web/docker-wordpress-nginx.git ~/docker-wordpress-nginx
$ cd ~/docker-wordpress-nginx
$ chmod +x reset.sh
$ sudo docker-compose up -d
```

## Stop Services
```
$ cd ~/docker-wordpress-nginx
$ sudo docker-compose down
```

## Remove Services
```
$ cd ~/docker-wordpress-nginx
$ sudo docker-compose down
$ ./reset.sh
```

## References
- [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)
- [Install Docker Compose](https://docs.docker.com/compose/install/)
- [Docker: Nginxを使ったWordPress開発環境の構築方法](https://keruuweb.com/docker-how-to-build-wordpress-development-environment-using-nginx/)

