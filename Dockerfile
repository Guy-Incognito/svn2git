FROM debian

RUN apt update && apt install -y git-core git-svn ruby &&\
    gem install svn2git

# config directory
RUN mkdir /config
VOLUME /config

# output directory
RUN mkdir /data
VOLUME /data

ADD entrypoint.sh /usr/bin/entrypoint.sh

WORKDIR /data

ENTRYPOINT ["entrypoint.sh"]

CMD ["svn2git", "--authors" , "/config/authors.txt"]