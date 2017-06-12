# Customer service tickets

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

