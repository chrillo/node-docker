FROM keymetrics/pm2:10-alpine as base
WORKDIR /usr/app/
COPY package.json package-lock.json /usr/app/
RUN npm ci --production
COPY . .

FROM base
WORKDIR /usr/app/
COPY --from=base /usr/app/ .
# RUN pm2 install pm2-server-monit
# Expose port 8080
EXPOSE 3000
RUN ls -la
CMD ["pm2-runtime", "start", "process.json"]
# CMD ["npm","start"]


