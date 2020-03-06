FROM ruby:2.6.3

RUN bundle config --global frozen 1
RUN mkdir /PhotoSite
WORKDIR /PhotoSite
COPY Gemfile /PhotoSite/Gemfile
COPY Gemfile.lock /PhotoSite/Gemfile.lock
RUN gem install bundler:2.1.4
RUN bundle install
COPY . /PhotoSite
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg -o /root/yarn-pubkey.gpg && apt-key add /root/yarn-pubkey.gpg
RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn

RUN apt-get -y install sqlite3 libsqlite3-dev
EXPOSE 3000
CMD bundle exec rails s -p ${PORT} -b '0.0.0.0'