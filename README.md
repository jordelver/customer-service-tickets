# Customer service tickets

## Requirements

* Ruby 2.4.1
* PostgreSQL

## Setup

Run `bundle install` to install application dependencies.

Run `rake db:setup` to create the databases and seed data. You might want to
edit `database.yml` to match your environment.

Start the app server with `bin/rails s`

## Tests

Run with `bundle exec rspec`

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

* I added one feature spec to test through the stack. The idea being that you
  would have many unit tests and a few high-level features to verify that
  everything "hangs together". It doesn't test every code path, nor should it,
  but checks that you can create a ticket.

* If logic became any more complicated than what we already have in the tickets
  controller I'd be very tempted to use something like this:
  https://github.com/collectiveidea/interactor

