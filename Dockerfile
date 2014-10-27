FROM node:0.10

# set NODE_ENV to production
ENV NODE_ENV production

# chdir into /usr/src/app
WORKDIR /usr/src/app

# copy app dist to image
ADD drax-dist/package.json /usr/src/app/package.json

# install production dependencies
RUN npm install --production

# copy app dist to image
ADD drax-dist /usr/src/app

EXPOSE 6515
