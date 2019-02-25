# Jungle

A mini e-commerce application built with Ruby and Rails

## Features

#### Implemented the following features:

**Product Ratings** - Allows logged in users to be able to review and rate products

**Admin basic authorization** - Added basic http authorization in order to secure admin resources

**Order receipt** - E-mail receipt sent upon order completion to user's email

**Order details** - Enhanced the order show page to display information about user's order

**User Authentication** - Allow visitors to register or log in with a user account

**Admin categories** - Implement the abilities for administrators to create new categories and to see a list of all categories

**Empty cart fix** - If the user tries to check out with an empty cart, prevent that, and provide a link to home page

**Sold-out badge** - when a product has zero quantity, disaplays a sold out badge on the product list page

## Screenshots

!["1"](https://raw.githubusercontent.com/Stan-Solo/jungle-rails/master/screenshots/Screenshot%20from%202019-02-24%2013-24-23.png )
!["2"](https://raw.githubusercontent.com/Stan-Solo/jungle-rails/master/screenshots/Screenshot%20from%202019-02-24%2013-24-58.png )


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
