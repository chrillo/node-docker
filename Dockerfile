FROM keymetrics/pm2:10-alpine as base
WORKDIR /usr/src
COPY package.json /usr/src/
RUN npm ci --production
COPY . .

FROM base
WORKDIR /usr/src
COPY --from=base /usr/src .
# RUN pm2 install pm2-server-monit
# Expose port 8080
EXPOSE 3000
CMD ["pm2-runtime", "start", "process.json"]
# CMD ["npm","start"]


