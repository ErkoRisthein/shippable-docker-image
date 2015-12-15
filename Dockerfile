FROM jaimegildesagredo/shippable-phantomjs-image:latest

RUN apt-get update
RUN apt-get -y install libfreetype6
RUN apt-get -y install libfontconfig1
RUN source ~/.nvm/nvm.sh && nvm use 0.12
RUN npm install -g bower gulp
RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import -
RUN \curl -O https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer
RUN \curl -O https://raw.githubusercontent.com/wayneeseguin/rvm/master/binscripts/rvm-installer.asc
RUN gpg --verify rvm-installer.asc && bash rvm-installer stable
RUN source /etc/profile.d/rvm.sh
RUN source /usr/local/rvm/scripts/rvm && rvm install ruby
RUN rvm use ruby --default