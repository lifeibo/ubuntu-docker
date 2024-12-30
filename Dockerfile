FROM ubuntu:25.04
RUN apt-get update; apt-get upgrade -y;\
apt-get install openssh-server -y; service ssh start;\
apt-get install -y tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;\
apt-get install -y neovim;\
apt-get install -y git;\
apt-get install -y curl;\
apt-get install -y supervisor;\
apt-get install -y net-tools;\
mkdir -p /var/run/sshd;\
mkdir -p /var/log/supervisor;\
apt-get install -y make;

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
