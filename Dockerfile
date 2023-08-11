FROM zerotier/zerotier

RUN apt-get update -qq && apt-get install iptables -y

COPY ./entrypoint.sh /entrypoint-nat.sh

ENTRYPOINT ["/entrypoint-nat.sh"]
