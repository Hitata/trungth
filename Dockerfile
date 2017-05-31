FROM node:6.10.3

#Create user app.
RUN useradd --user-group --create-home --shell /bin/false app

ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/trungth/
RUN chown -R app:app $HOME/*

USER app 
WORKDIR $HOME/trungth

RUN npm install

EXPOSE 8081

CMD node server.js