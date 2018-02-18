#
# hddtemp Dockerfile
#

# Pull base image.
FROM debian
MAINTAINER Sylvain Desbureaux

ARG VCS_REF="1cf58e3"
ARG BUILD_DATE="2018-02-15T16:06:39Z"

LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="http://savannah.nongnu.org/projects/hddtemp" \
      org.label-schema.url="http://www.guzu.net/linux/hddtemp.php" \
      org.label-schema.name="HDDTemp" \
      org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="GPLv3" \
      org.label-schema.build-date=$BUILD_DATE

# Install hddtemp
RUN apt update && apt -y install hddtemp && apt-get clean && rm -rf /var/cache/apt/*

# Define default command.
# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp $HDDTEMP_ARGS
