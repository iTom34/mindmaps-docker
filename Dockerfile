FROM ubuntu:20.04

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y locales npm
RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

WORKDIR /root
COPY mindmaps/ .

RUN npm install
RUN npm run build

WORKDIR /root/dist
ENTRYPOINT ["npm", "start"]
