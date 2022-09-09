FROM ruby:3.1.2
LABEL Description="Image for running Cucumber tests"

RUN mkdir cucumber
WORKDIR /cucumber
COPY Gemfile .

RUN gem install bundler --source http://rubygems.org &&\
    bundle install
	
WORKDIR	/mnt

