# using a minimal ubuntu
# ref: https://github.com/phusion/baseimage-docker#login_ssh
# https://hub.docker.com/r/phusion/baseimage/
FROM phusion/baseimage

# Enable Insecure Key
# WARNING: not for production!
# http://stackoverflow.com/a/28771401/682912

RUN rm -f /etc/service/sshd/down
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# apparently python is required to run ansible inside docker container
RUN apt-get update -qqy && apt-get install -y python python-dev python-distribute python-pip

CMD /sbin/my_init --enable-insecure-key
