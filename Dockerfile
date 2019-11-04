FROM ruby:2.6.5-alpine3.10

COPY ./Gemfile .
COPY main.rb .
RUN bundle install
ENTRYPOINT [ "ruby", "main.rb" ]
