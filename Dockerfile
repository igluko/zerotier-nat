FROM zerotier/zerotier:1.12.1

RUN apt-get update -qq && apt-get install iptables -y

COPY ./entrypoint.sh /entrypoint-nat.sh

ENTRYPOINT ["/entrypoint-nat.sh"]
