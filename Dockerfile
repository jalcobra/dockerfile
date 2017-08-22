FROM ubuntu

MAINTAINER Jorge

RUN apt-get update && apt-get install -y

RUN apt-get install apache2 -y

RUN echo "mysql-server-5.1 mysql-server/root_password password your_mysql_root_password" | debconf-set-selections

RUN echo "mysql-server-5.1 mysql-server/root_password_again password your_mysql_root_password" | debconf-set-selections

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

RUN  apt-get install php mysql-client libapache2-mod-php php-mcrypt php-mysql -y


