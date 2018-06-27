# Jungle

A mini e-commerce application built with Rails 4.2, with Stripe integration to handle financial transactions.

##Screenshots
![Homepage](https://github.com/ChibweMw/jungle-rails/blob/master/docs/Homepage.png?raw=true)
![Cart](https://github.com/ChibweMw/jungle-rails/blob/master/docs/Cart.png?raw=true)
![Stripe UI](https://github.com/ChibweMw/jungle-rails/blob/master/docs/Stripe%20UI.png?raw=true)
![Order](https://github.com/ChibweMw/jungle-rails/blob/master/docs/Order.png?raw=true)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

## Dependencies

[Rails Guide](http://guides.rubyonrails.org/v4.2/)

```
* Rails 4.2
* PostgreSQL 9.x
* Stripe

* sass-rails
* uglifier
* coffee-rails
* therubyracer

* jquery-rails
* turbolinks
* jbuilder
* sdoc

* bcrypt

* puma
* bootstrap-sass
* font-awesome-rails
* money-rails
* carrierwave
* rmagick
* stripe
* faker
```