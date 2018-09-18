FROM debian:stretch

# Install hddtemp
RUN apt update && apt -y install hddtemp && apt-get clean && rm -rf /var/cache/apt/*

# Define default command.
# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp $HDDTEMP_ARGS
