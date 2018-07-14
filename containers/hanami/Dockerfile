FROM ruby:2.5.1

## ENV ##
ENV APP_HOME /var/www
# Install global gem in external strage
ENV BUNDLE_PATH /bundle/ruby/2.4.4
ENV BUNDLE_TIMEOUT 30
# Enable Japanese input
ENV LANG C.UTF-8

## COMMAND ##
# Essential
RUN apt-get update -qq && \
    apt-get install -y build-essential zip vim wget apt-transport-https
# For mysql
RUN apt-get install -y mysql-client
# Change timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
# Remove cache
RUN rm -rf /var/lib/apt/lists/*
# Root directory
RUN mkdir $APP_HOME

WORKDIR $APP_HOME

# Port
EXPOSE 2300

# Always delete pid
CMD bash -c "bundle; bundle exec hanami s"
