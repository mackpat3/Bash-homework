#!/bin/bash


function k-pop(){
        sudo useradd jenny
        sudo useradd rose
        sudo useradd lisa
        sudo useradd jisoo

        sudo groupadd blackpink

        sudo usermod -aG blackpink jenny
        sudo usermod -aG blackpink rose
        sudo usermod -aG blackpink lisa
        sudo usermod -aG blackpink jisoo

}

function wordpress(){
        sudo yum install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y
        sudo systemctl start mariadb httpd
        sudo system enable httpd
        wget https://wordpress.org/latest.tar.gz
        tar -xzf latest.tar.gz
        sudo mv wordpress/* /var/www/html
        sudo chown -R apache:apache /var/www/html
        sudo chown -R 755 /var/www/html
	sudo system restart httpd

}


function binary(){
	sudo yum install tree -y
	sudo yum install shadow-utils -y
	sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
	sudo yum install terraform -y
	terraform -v
}

k-pop
wordpress
binary
