# Customer service tickets

## Requirements

* Ruby 2.4.1
* PostgreSQL

## Setup

Run `bundle install` to install application dependencies.

Run `rake db:setup` to create the databases and seed data. You might want to
edit `database.yml` to match your environment.

Start the app server with `bin/rails s`

## Some things to note...

* Because we’re not logged in, we can’t filter to show the customer’s orders, so
  for the purposes of this test, we just assume they are only being shown their
  own orders.
 
* I’ve added a helper method (`customer_orders`) to format the customer orders
  for display. I wouldn’t normally necessarily use a helper, but in this case
  it’s the simplest and quickest method. In “real life” a decorator object
  might be used.

* We might want to add database level constraints on the tickets table rather
  than relying on ActiveRecord.

