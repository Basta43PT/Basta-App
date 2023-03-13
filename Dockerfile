FROM node:16-alpine

ARG HOST_URL
ENV HOST_URL=${HOST_URL}

ARG POSTGRESSQL_USER
ENV POSTGRESSQL_USER=${POSTGRESSQL_USER}

ARG POSTGRESSQL_PWD
ENV POSTGRESSQL_PWD=${POSTGRESSQL_PWD}

ARG JWT_KEY
ENV JWT_KEY=${JWT_KEY}

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -D @swc/cli @swc/core

COPY . .

RUN npm run build
