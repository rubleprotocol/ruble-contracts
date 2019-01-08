FROM circleci/node:9

USER node

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN ls -la /usr/src/app

RUN yarn install
RUN yarn migrate

EXPOSE 9090

CMD ["yarn", "test"]