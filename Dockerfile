FROM node:6.10.3

ENV HOME=/home/app

COPY . $HOME/chat

WORKDIR $HOME/chat

EXPOSE 9000

#CMD ["node", "server.js", ">", "trungth.log 2", ">", "trungth_err.log"]
CMD node server.js > trungth.log 2 > trungth_err.log