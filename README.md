# Jungle

A mini e-commerce application built with Ruby and Rails

## Screenshots

!["1"](https://github.com//SStan-Solo/jungle-rails/blob/master/screenshotscreenshot%20from%202019-02-24%2013-24-23.png )
!["2"](https://github.com//SStan-Solo/jungle-rails/blob/master/screenshotscreenshot%20from%202019-02-24%2013-24-58.png )


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Run `bin/rake db:reset` to create, load and seed db
4. Sign up for a Stripe account
5. Put Stripe (test) keys into appropriate .env vars
6. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
