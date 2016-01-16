FROM ruby:2.1.7
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN apt-get install nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
