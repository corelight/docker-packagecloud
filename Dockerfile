FROM corelight/alpine-aws
LABEL maintainer="Corelight AWS Team <aws@corelight.com>"
LABEL description="Alpine docker container with packagecloud (ruby) and AWS CLI"

RUN apk -Uv add ruby ruby-dev ruby-rdoc g++ make && \
    gem install package_cloud && \
    apk --purge -v del g++ make ruby-dev ruby-rdoc && \
    rm /var/cache/apk/*
