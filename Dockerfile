FROM node:0.10-slim


COPY ./package.json /src/package.json
RUN cd /src && npm install
COPY  ./ /src

WORKDIR /src
#ENV DEBUG=*

EXPOSE 8080 5222

CMD ["npm", "start"]
