FROM ubuntu:precise

RUN apt-mark hold initscripts
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade

# Prepare RVM
RUN apt-get -yq install curl git libmysqlclient-dev libxml2-dev
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN echo 'source /usr/local/rvm/scripts/rvm' >> /etc/bash.bashrc

ENV PATH "$PATH:/usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/rvm/gems/ruby-2.0.0-p247/bin"
RUN echo "gem: --no-ri --no-rdoc" > /etc/gemrc

RUN /usr/local/rvm/bin/rvm install ruby-2.0.0-p247 --binary --max-time 20
RUN /usr/local/rvm/bin/rvm alias create default ruby-2.0.0-p247
RUN /usr/local/rvm/bin/rvm default do gem install bundler
