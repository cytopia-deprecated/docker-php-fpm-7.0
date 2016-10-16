##
## PHP-FPM 7.0
##
FROM centos:7
MAINTAINER "cytopia" <cytopia@everythingcli.org>


##
## Labels
##
LABEL \
	name="cytopia's PHP-FPM 7.0 Image" \
	image="php-fpm-7.0" \
	vendor="cytopia" \
	license="MIT" \
	build-date="2016-10-17"


##
## Bootstrap Scipts
##
COPY ./scripts/docker-install.sh /
COPY ./scripts/docker-entrypoint.sh /


##
## Install
##
RUN /docker-install.sh


##
## Ports
##
EXPOSE 9000


##
## Volumes
##
VOLUME /var/log/php-fpm


##
## Entrypoint
##
ENTRYPOINT ["/docker-entrypoint.sh"]
