FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.20

RUN gem install chef-dk --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["chef"]
CMD ["--help"]
