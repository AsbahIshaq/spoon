FROM ruby:2.6.6-stretch
COPY . /spoon
WORKDIR /spoon
RUN bundle install --deployment --without development test
ENV RAILS_ENV production

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs

ENTRYPOINT ./entrypoint.sh