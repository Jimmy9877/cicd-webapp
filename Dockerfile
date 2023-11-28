FROM node:18-alpine
WORKDIR /webapp
COPY package.json yarn.lock /webapp/
RUN yarn install --frozen-lockfile
COPY . /webapp
EXPOSE 3000 
CMD ["yarn", "start"]