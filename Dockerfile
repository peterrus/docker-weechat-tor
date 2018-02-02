FROM phusion/baseimage:0.10.0

RUN apt -y upgrade

RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E
RUN echo "deb https://weechat.org/ubuntu xenial main" >> /etc/apt/sources.list

RUN apt-key adv --keyserver keys.gnupg.net --recv-keys A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
RUN echo "deb http://deb.torproject.org/torproject.org xenial main" >> /etc/apt/sources.list

RUN apt update
RUN install_clean weechat tor deb.torproject.org-keyring

RUN adduser --disabled-login --gecos weechat weechat

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN mkdir /weechat-data
RUN chown -R weechat:weechat /weechat-data

USER weechat:weechat
CMD ["/entrypoint.sh"]
