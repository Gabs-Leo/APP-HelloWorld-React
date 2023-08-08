FROM node:18-slim AS builder
RUN apt -y update && apt -y install curl unzip wget jq
COPY --chown=node cloudformation/services/scripts /scripts
RUN mkdir -p /app 
RUN chown -R node:node /app
USER node
WORKDIR /app

COPY --chown=node ./app .
RUN cat .env
RUN yarn
RUN yarn build

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf *
COPY --from=builder /app/build .
ENTRYPOINT ["nginx", "-g", "daemon off;"]