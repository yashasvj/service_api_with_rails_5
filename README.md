## SETUP

```
cd rails5api
bundle install
```

Edit ```config/database.yml```

Create DB
```
rails db:create
```

Note that no views are created since we are running in API mode.

```
bin/rails db:migrate

# run the default server on port 3000
bin/rails s
```
Your new API should now up and running on http://localhost:3000.

## How to run
*Clone source from github*
```
cd
git clone && cd rails5api
bundle install
```
*Edit `config/database.yml`*
```
default: &default
  adapter: postgresql
  encoding: unicode
  template: template0
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  host: localhost
  port: 5432
  username: postgres
  password: password

development:
  <<: *default
  database: filter_api_development
```
*Create a new user to get token, type command `rails c`*
```ruby
u = User.create({name: "Yashas", email: "yash@gmail.com"})
ap u
```
*next typing*
```
rails s
```
*then run in `Terminal`*
```ruby
# with [token] that taken on rails console
curl -H "Authorization: Token token=[token]" http://localhost:3000/v1/users
```
*example*
```
curl -H "Authorization: Token token=3Hu9orST5sKDHUPJBwjbogtt" http://localhost:3000/v1/users
```