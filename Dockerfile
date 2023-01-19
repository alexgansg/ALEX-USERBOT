FROM alexxubot/alex-userbot:buster

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs && \
    npm i -g npm

RUN git clone -b main https://github.com/alexgansg/ALEX-USERBOT /home/ALEX-USERBOT/ \
    && chmod 777 /home/ALEX-USERBOT \
    && mkdir /home/ALEX-USERBOT/bin/

WORKDIR /home/ALEX-USERBOT/

CMD [ "bash", "start" ]
