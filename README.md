## centos72-php7

### 版本
centos: 7.2
Apache: 2.4.6
php: 7.1.6

### 使用方法
```
安装docker客户端
下载：Dockerfile
cd Dockerfile所在目录
制作镜像：sudo docker build -t centos72-php7:3.0 .
启动php7: sudo docker run -d -p 80:80 -v /yourproject:/var/www/html centos72-php7:3.0
访问地址：http://127.0.0.1/
```

### php 7.1.6 安装过程
```
docker pull centos:7.2.1511
docker run -it centos

yum install httpd

rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
yum install php71w
yum install -y php71w-cli \
yum install -y php71w-mbstring \
yum install -y php71w-pecl-redis \
yum install -y php71w-mysql \
yum install -y php71w-pdo \
yum install -y php71w-gd \
yum install -y php71w-mcrypt \
yum install -y php71w-opcache
```