vagrant-mysql-ramdisk
=====================

Ubuntu machine with mysql on ram, created for running web application functional tests

**Requirements**
-  Librarian-chef gem ( ***gem install librarian-chef*** ) [Repository](https://github.com/applicationsonline/librarian-chef)
-  Vagrant gem ( ***gem install vagrant*** ) [Link website](http://www.vagrantup.com)


**Instructions** (run these commands)
``` bash
librarian-chef install
vagrant up
```
and then you can connect mysql with 

``` bash
mysql -u root -h 33.33.33.33
```

Please does not shutdown the machine but type ***vagrant suspend***, i'm working for solve this issue.
