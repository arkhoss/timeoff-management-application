FROM node:15

EXPOSE 3000

ENV NODE_ENV=production

RUN git clone https://github.com/timeoff-management/timeoff-management-application.git timeoff

WORKDIR /timeoff

RUN npm install

RUN npm install --save mysql

CMD npm start

