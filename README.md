# README

## Ruby on Rails web application to search Github public repos

### Setup

Clone repository `git clone git@github.com:vshl/movies-db.git`

cd to project root directory: `cd ../path/to/github-search`

#### Method 1: Docker (Recommended)

1. Install Docker Desktop https://www.docker.com/products/docker-desktop

2. Run `docker-compose` to build the image and get running

    `docker-compose up -d`

3. Rails db migrate to setup the database schema

    `docker-compose run web bundle exec rails db:migrate`

4. Rails server is up and running at http://localhost:3000

#### Method 2: Local Install

Prerequisites:

* Ruby v2.6.3
* Rails v5.2.4.1
* Bundler v1.17.2

```
rbenv install 2.6.3 (or preferred ruby installation method)

gem install bundler -v 1.17.2
```

1. Run bundler to install required gems

    `bundle install`

2. Run Rails migration to setup database schema

    `bundle exec rails db:migrate`

3. Start Rails server

    `bundle exec rails s`

4. Open web browser at http://localhost:3000
