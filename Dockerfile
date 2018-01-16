# Based on https://github.com/docker-library/wordpress/blob/master/php5.6/apache/Dockerfile
FROM wordpress:4.9.1-php5.6-apache

# Install Inspec and add Tests
RUN apt-get update
RUN apt-get -y install ruby ruby-dev
RUN gem install mixlib-shellout -v 2.2.7
RUN gem install inspec --no-ri --no-doc
COPY tests /tests
