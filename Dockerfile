# Set the base image to nepalez/ruby (Ubuntu 14.01 + Ruby + gems + bundler)
FROM nepalez/ruby

MAINTAINER Mark Halloran

# Install rspec, capybara, poltergeist
RUN /bin/bash -l -c 'gem install rspec'
RUN /bin/bash -l -c 'gem install capybara'
RUN /bin/bash -l -c 'gem install poltergeist'

RUN apt-get -y install bzip2 fontconfig
RUN curl -sL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-x86_64.tar.bz2 | tar xj -C /usr/local/share
RUN ln -s /usr/local/share/phantomjs-*-linux-x86_64 /usr/local/share/phantomjs
RUN ln -s /usr/local/share/phantomjs-*-linux-x86_64 /usr/local/bin/phantomjs
RUN ln -s /usr/local/share/phantomjs-*-linux-x86_64 /usr/bin/phantomjs

RUN git clone https://github.com/unigeek/petulant-octo-hipster
RUN cd petulant-octo-hipster

# Set the default command to execute
CMD ["bash"] 
