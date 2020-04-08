# README

## Ruby on Rails web application to search popular Movie titles

### Setup

Clone repository `git clone git@github.com:vshl/movies-db.git`

cd to project root directory: `cd ../path/to/movies-db`

#### Method 1: Docker (Recommended)

1. Install Docker Desktop https://www.docker.com/products/docker-desktop

2. Run `docker-compose` to build the image and get running

    `docker-compose up -d`

3. Optionally run sample RSpec tests

    `docker-compose run web bundle exec rspec`

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

2. Start Rails server

    `bundle exec rails s`

3. Optionally run sample RSpec tests

    `bundle exec rspec`

4. Open web browser at http://localhost:3000

### Usage

Use text box to search for a movie title, e.g: Star Wars, Batman, Superman

### Trade Offs

* I initially thought to have a static page listing a particular movie series,
  but opted to implement a simple search bar that can list any movies. The
  process was trivial as the bulk of the work was already implemented and I just
  had to add a search box to send the input search argument to the controller.
* The result is a more presentable and real world application that can return
  meaningful results.
* The API currently only fetches Movie data to narrow down on the results
  returned
* Next steps would involve adding more search parameters that uses more of the
  API parameters for example:
  * If the user wants to search only 'TV Shows' or 'Movies'
  * Return a Title from a particular Year
  * Search for an episode of a TV show
* Front-End enhancements to make the web page pretty


### Relevant files

`app/controllers/movie_controller.rb`

`app/models/movie.rb`

`app/helpers/movie_helper.rb`

`spec/helpers/movie_helper_spec.rb`

`app/views/movie/index.html.erb`

`app/views/movie/_title.html.erb`
