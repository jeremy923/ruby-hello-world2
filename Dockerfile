FROM openshift/ruby-20-centos7
USER default
EXPOSE 8080
ENV RACK_ENV production
ENV RAILS_ENV production

ENTRYPOINT /bin/bash
