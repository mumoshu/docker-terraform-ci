# Based on https://github.com/hashicorp/docker-hub-images/blob/master/terraform/Dockerfile-light

FROM hashicorp/terraform:0.11.10

MAINTAINER "Yusuke KUOKA <ykuoka@gmail.com>"

RUN apk add --no-cache --update bash jq

RUN mkdir /tfnotify && \
  cd /tfnotify && \
  curl -L https://github.com/mercari/tfnotify/releases/download/v0.1.0/tfnotify_v0.1.0_linux_amd64.tar.gz -o tfnotify.tgz && \
  tar -zxvf tfnotify.tgz && \
  find . && \
  mv tfnotify_v0.1.0_linux_amd64/tfnotify /usr/local/bin/ && \
  rm -rf tfnotify.tgz tfnotify_v0.1.0_linux_amd64/

ENTRYPOINT ["/bin/bash"]
