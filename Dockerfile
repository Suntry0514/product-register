FROM ruby:2.5
RUN apt-get update && apt-get install -y \
        build-essential \
        libpq-dev \
        nodejs \
        postgresql-client \
        yarn
WORKDIR /practice_web
COPY Gemfile Gemfile.lock /practice_web/
RUN bundle install