FROM ruby
RUN apt-get update -qq && apt-get install -y git libmysqlclient-dev  build-essential libpq-dev
RUN mkdir /cloudmotors
WORKDIR /cloudmotors
ADD Gemfile /cloudmotors/Gemfile
RUN bundle install
ADD . /cloudmotors
