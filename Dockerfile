FROM php:7.2.7-apache

LABEL maintainer="yoshikaz"
ENV DEBCONF_NOWARNINGS yes
RUN apt-get update
RUN apt-get install -y libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev
RUN apt-get install -y git
RUN apt-get install -y wget
RUN apt-get install -y libmecab-dev
RUN apt-get install -y locales locales-all
RUN apt-get install -y vim unzip

RUN apt-get update \
    && apt-get install -y locales \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
    
    
RUN usermod -u 1000 www-data \
    && groupmod -g 1000 www-data
