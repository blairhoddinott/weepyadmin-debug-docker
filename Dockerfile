FROM debian:12 AS base

RUN apt update && apt upgrade -y
RUN apt install inetutils-ping dnsutils kubernetes-client htop curl wget -y
RUN wget https://github.com/derailed/k9s/releases/download/v0.50.6/k9s_linux_amd64.deb
RUN dpkg -i k9s_linux_amd64.deb

CMD ["tail", "-f", "/var/log/lastlog"]