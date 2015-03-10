FROM phusion/passenger-ruby21:0.9.12

ENV HOME /root



CMD ["bash"]
CMD ["/sbin/my_init"]

RUN rm -f /etc/service/nginx/down

RUN rm /etc/nginx/sites-enabled/default

ADD nginx.conf /etc/nginx/sites-enabled/webapp.conf

RUN mkdir /home/app/webapp

WORKDIR /tmp
Add Gemfile /tmp/
Add Gemfile.lock /tmp/
RUN bundle install

ADD . /home/app/webapp
RUN cd /home/app/webapp && rake db:migrate

RUN chown app:app -R /home/app/webapp
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


