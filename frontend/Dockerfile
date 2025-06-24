FROM node:22-alpine

EXPOSE 80

WORKDIR /app

RUN npm install -g npm

RUN npm create vue@latest vue_project -- --default

WORKDIR /app/vue_project
RUN npm install

ENTRYPOINT ["npm", "run", "dev", "--", "--port", "3007"]
