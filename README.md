# new
# This Project contains Vagrant file and Docker file to build a Vagrant Container that hosts nginx server configured with VirtualHost

# Known Issues 

1. some bug with the Windows Vagrant lates version - throwing error while building VM ( shh Key Mismatch )
2. Unable to map port of guest port to host port 80 ( Vagrant is not letting default port 80 ; anything less than 1024 )
