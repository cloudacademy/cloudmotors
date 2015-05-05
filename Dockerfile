FROM ruby:2.0.0
RUN apt-get update -qq && apt-get install -y libmysql-ruby libmysqlclient-dev  build-essential libpq-dev
RUN mkdir /cloudmotors
WORKDIR /cloudmotors
ADD Gemfile /cloudmotors/Gemfile
RUN bundle install
ADD . /cloudmotors
