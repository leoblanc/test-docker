# Based on https://github.com/docker-library/wordpress/blob/master/php5.6/apache/Dockerfile
FROM wordpress:4.9.1-php5.6-apache

# Install Inspec (requires Ruby 2.3+, but Debian Jessie supplies Ruby 2.2)
RUN apt-get update
RUN apt-get -y install wget zlib1g-dev libssl-dev libreadline-dev libgdbm-dev openssl
RUN mkdir /tmp/ruby
WORKDIR /tmp/ruby
RUN wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.0.tar.gz
RUN tar xvfz ruby-2.3.0.tar.gz
WORKDIR /tmp/ruby/ruby-2.3.0
RUN ./configure
RUN make
RUN make install
RUN gem install mixlib-shellout -v 2.2.7
RUN gem install inspec --no-ri --no-doc

# Add Inspec tests
COPY tests /tests
