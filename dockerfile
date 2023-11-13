FROM ubuntu:latest
MAINTAINER rose <qrataller@tip.edu.ph>

# to skip prompts
arg debian_frontend=noninteractive

# to update packages
run apt update; apt dist-upgrade -y

# to install packages
run apt install -y apache2 mariadb-server

# to set an entrypoint
entrypoint apache2ctl -d foreground

