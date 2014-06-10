Dockerized RAML API Server for WebPT
----------------------------------------

Setting up the Server
=========================

After pulling down the repo:

1. `docker build -t apidesigner .`
2. `docker run -it -p 9013:9013 -p 35730:35730 apidesigner /bin/bash`
3. `cd /usr/local/api-designer`
4. `bower install --allow-root`
5. Type `n` to reporting usage stats for bower
6. Type `3` to confirm package ambiguity for angular.js
7. `grunt-server`
8. Press `CTRL+P` then `CTRL+Q` to detach from running docker
9. Connect via port 9013 in a browser

