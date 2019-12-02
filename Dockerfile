FROM dorowu/ubuntu-desktop-lxde-vnc:bionic-lxqt

# install language pack
RUN apt-get update; \
    apt-get install -y apt-transport-https language-pack-zh-hans ttf-wqy-microhei; \
    apt-get autoclean; \
    apt-get clean; \
    apt-get autoremove

ENV LANG=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8

# download BaiduNetdisk linux
RUN apt-get install -y wget; \
    wget http://issuecdn.baidupcs.com/issue/netdisk/LinuxGuanjia/3.0.1/baidunetdisk_linux_3.0.1.2.deb -O /tmp/bddisk.deb; \
    dpkg -i /tmp/bddisk.deb; \
    apt-get autoclean; \
    apt-get clean; \
    apt-get autoremove
