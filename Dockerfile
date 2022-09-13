FROM node:10-alpine as builder
COPY package*.json ./
RUN npm install

FROM node:10-alpine
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY --from=builder node_modules node_modules

# ARG GIT_VERSION
# ARG GIT_COMMIT

ENV VERSION=1
ENV LAST_COMMIT=2

COPY . .
EXPOSE 8000
CMD ["npm","start"]