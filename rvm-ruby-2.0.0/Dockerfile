FROM slawosz/rvm-ruby

RUN /usr/local/rvm/bin/rvm install ruby-2.0.0-p247 --binary --max-time 20
RUN /usr/local/rvm/bin/rvm alias create default ruby-2.0.0-p247
RUN /usr/local/rvm/bin/rvm default do gem install bundler
