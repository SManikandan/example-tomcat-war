FROM centos:7
MAINTAINER Erik Jacobs <erikmjacobs@gmail.com>

ENV RUBY_VERSION="2.1.9" \
    RUBY_URL="https://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.9.tar.gz" \
    RUBYGEMS_VERSION="2.6.4" \
    RUBYGEMS_URL="https://rubygems.org/rubygems/rubygems-2.6.4.tgz" \
    GITLAB_VERSION="8.8.1" \
    BUILD_PKGS="gcc-c++ automake cmake make autoconf which patch" \
    REMOVE_PKGS=0

# install prereqs and compilers
RUN yum clean all && \
    yum -y install centos-release-scl 
