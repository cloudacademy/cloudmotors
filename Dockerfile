FROM ruby:2.0.0
RUN apt-get update -qq && apt-get install -y git libmysqlclient-dev  build-essential libpq-dev
RUN mkdir /cloudmotors
WORKDIR /cloudmotors
ADD Gemfile /cloudmotors/Gemfile
RUN gem install bundler
RUN gem install rake -v 10.4.2
RUN bundle install
ADD . /cloudmotors
