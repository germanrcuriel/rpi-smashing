FROM balenalib/rpi-raspbian

RUN apt-get update \
    && apt-get install -y ruby ruby-dev build-essential tzdata wget nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install bundler smashing

RUN mkdir /smashing

COPY run.sh /

VOLUME ["/smashing"]

ENV PORT 3030
EXPOSE ${PORT}
WORKDIR /smashing

CMD ["/run.sh"]