FROM node:16-alpine

WORKDIR /app
COPY package.json ./
RUN npm install
COPY ./ ./

# Resolving create-react-app issues with docker:
#   - https://github.com/facebook/create-react-app/issues/8688
#   - https://github.com/facebook/create-react-app/issues/11779
ENV CI=true
ENV WDS_SOCKET_PORT=0

CMD ["npm", "start"]
