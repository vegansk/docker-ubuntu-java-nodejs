FROM ubuntu:16.04

MAINTAINER Anatoly Galiulin <galiulin.anatoly@gmail.com>

RUN apt-get update
RUN apt-get install -y \
  curl \
  openjdk-8-jdk \
  git \
  postgresql-client
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y yarn
RUN apt-get install -y bzip2
RUN npm i -g lerna
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

