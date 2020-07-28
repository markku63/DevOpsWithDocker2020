FROM ruby:2.6.0
WORKDIR /rails-example
RUN git clone --depth 1 https://github.com/docker-hy/rails-example-project.git .
RUN apt-get update -q && apt-get -y -q --no-install-recommends install nodejs
RUN bundle install && rails db:migrate
EXPOSE 3000
CMD [ "rails", "s" ]
