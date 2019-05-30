FROM mdrewt/rails:1.0.1

COPY . .

RUN bundle install

CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000" ]
