# Project:  New - Vagrant Docker with nginx
# This Project contains Vagrant file and Docker file to build a Vagrant Container that hosts nginx server configured with VirtualHost

# Known Issues 

1. some bug with the Windows Vagrant latest version - throwing error while building VM ( shh Key Mismatch )
    fix: It fixes the broken key automatically, if not - kindly reload the vagrant
2. Unable to map port of guest port to host port 80 ( Vagrant is not letting default port 80 ; anything less than 1024 )
    Currently Mapped to port 8080 on Host (Browser Machine)
    
Hosted pages:
------------
localhost:8080/1.html
localhost:8080/2.html
localhost:8080/3.html

Domains:
--------
myfirstpage.com:8080
mysecondpage.com:8080
mythirdpage.com:8080

