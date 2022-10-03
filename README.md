# microservices-simple-example
Simple example of microservice architecture. Developed during learning udemy course Microservices with Node.js and React (https://www.udemy.com/course/microservices-with-node-js-and-react)

This app is a simple blog and consist of such microservices as:
- `posts` - creating new posts
- `comments` - creating comments under the posts
- `moderation` - setting moderation status of comments
- `query` - getting posts info (post and comments)
- `event-bus` - simple message broker. Sharing events between microservices.
- `client` - simple client based on create-react-app

Perform following steps to run app locally on Linux:
- Install and configure `docker`, `minikube`, `kubectl`
- Run `minikube start`
- Add `<minikube-ip-address>	posts.com` to `/etc/hosts` file, where `<minikube-ip-address>` is a result of command `minikube ip`
- Use `skaffold dev` to run infrastructure and deploy microservices
- Open `posts.com` in your browser
