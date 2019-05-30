FROM mdrewt/rails:1.0.1

RUN npm update \
    && npm init -y
RUN npm install webpack webpack-cli react react-dom @babel/core @babel/preset-react @babel/preset-env babel-loader

COPY . .

RUN bundle install

CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000" ]
