I used the course material as the basis for the web application. I added a default.conf.template file to
use the PORT environment variable defined by Heroku as Nginx port, and changed the Dockerfile to copy this
file to its correct place. I created the .circleci directory and config.yml for CircleCI.

Repository is at https://github.com/markku63/docker-hy

Deployed app is https://docker-hy-markku63.herokuapp.com/
