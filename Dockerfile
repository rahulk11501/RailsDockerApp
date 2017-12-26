FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /deep_space_9 #your apps name
WORKDIR /deep_space_9
ADD Gemfile /deep_space_9/Gemfile
ADD Gemfile.lock /deep_space_9/Gemfile.lock
RUN bundle install
ADD . /deep_space_9

