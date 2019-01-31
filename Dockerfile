FROM ruby:2.5.3

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - ; \
  apt-get update -qq && apt-get install -y \
  build-essential nodejs \
  libpq-dev libqt4-dev libqtwebkit-dev

RUN mkdir /app
WORKDIR /app

RUN gem install bundler
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD . /app
