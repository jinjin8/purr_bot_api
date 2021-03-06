# PURR😻BOT API

## Description

An api that will return a list of feline breeds and associated felines available for adoption. It will let you search for your next purrbot randomly and by breed name.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Other Sources

* [Serializer](https://blog.engineyard.com/2015/active-model-serializers)
* [kaminari](https://github.com/kaminari/kaminari)
* [RackThrottle](https://github.com/dryruby/rack-throttle)

## Installation

* `$ git clone https://github.com/jinjin8/purr_bot_api`
* `$ cd purr_bot`

## PostgreSQL Integration

* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database

* `$ rake db:seed`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Add a breed to the database|Post, name => 'Abyssinian'|message: "Meow!"|
|Add a feline to the database|Visit specific breed path, Post, name => 'Ozzie', age => 2 coat_color => '{gold}', breed_id => 1|name: 'Ozzie', age: 2, coat_color: ['gold'], breed: { name: 'Abyssinian' }|
|Update a breed|Put, name => 'Abyssinian'|name: 'Abyssinian', id:1|
|Update a feline|Visit specific breed path, Put, name => 'Mr. Ozzie'|name: 'Mr. Ozzie'|
|Delete a feline|Visit specific feline path, Delete|message: "Adopted!"|
|Delete a breed|Visit a specific breed path, Delete|message: "All out!"|
|See a list of all breeds|Visit '/breeds' path|name: 'Abyssinian'|
|See a list of all felines for a particular breed|Visit '/breeds/1'|felines: name: 'Ozzie'|
|Search for a feline by breed name|Visit '/breeds/by_name?name=Abyssinian'|felines: name: 'Ozzie'|
|Search for random felines|Visit '/breeds/1/felines/random'|felines: name: 'Ozzie'|

## Feline Path 🐈 🐈 🐈
![Feline](public/images/felines.png)
## Random Path 🐈 🐈 🐈 🐈 🐈
![Breed](public/images/random.png)
## Search Path 🐈 🐈 🐈 🐈 🐈 🐈 🐈 🐈
![Search](public/images/by_name.png)

## Known Bugs
* N/A

### Support and contact details
  _jincamou@gmail.com_ 🐈

### License
  _MIT_ &copy; _2017_ **jin camou**
