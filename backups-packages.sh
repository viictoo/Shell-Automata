#get packages
sudo dpkg-query -f '${binary:Package}\n' -W > aptPackages.txt
