FROM node:14.18.1
WORKDIR /app
COPY package.json .
COPY yarn.lock .
COPY . .
RUN yarn install
RUN yarn build
RUN yarn generate
ENV HOST 0.0.0.0
EXPOSE 3000
CMD [ "yarn", "start" ]
