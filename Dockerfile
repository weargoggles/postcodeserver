FROM dabapps/docker-base

COPY . /tmp/app/
RUN /bin/herokuish buildpack build
RUN useradd herokuishuser
RUN rm -rf /tmp/app
