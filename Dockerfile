# FROM gatsbyjs/gatsby:onbuild

# FROM gatsbyjs/gatsby
# COPY public /pub

FROM node:14-alpine AS builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
# COPY tsconfig*.json ./
COPY . .
RUN npm run build

FROM node:14-alpine
ENV NODE_ENV=production
RUN apk add --no-cache tini
WORKDIR /usr/src/app
RUN chown node:node .
USER node
COPY package*.json ./
RUN npm install serve
COPY --from=builder /usr/src/app/public public
EXPOSE 3000
ENTRYPOINT [ "/sbin/tini","--", "./node_modules/.bin/serve", "-l", "3000", "public" ]