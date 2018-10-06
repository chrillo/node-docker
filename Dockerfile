FROM keymetrics/pm2:10-alpine as base
WORKDIR /usr/src
COPY package.json package-lock.json /usr/src/
RUN npm ci --production
COPY . .

FROM base
WORKDIR /usr/src
ENV NODE_ENV="production"
COPY --from=base /usr/src .
# RUN pm2 install pm2-server-monit
# Expose port 8080
EXPOSE 8080
CMD ["pm2-runtime", "start", "process_prod.json"]


