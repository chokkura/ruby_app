FROM ruby:3.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev node.js

RUN mkdir /ruby_app
WORKDIR /ruby_app

COPY Gemfile /ruby_app/Gemfile
COPY Gemfile.lock /ruby_app/Gemfile.lock

RUN bundle install
COPY . /ruby_app