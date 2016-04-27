# ChainOfResponsibility

Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.
Launch-and-leave requests with a single processing pipeline that contains many possible handlers.
An object-oriented linked list with recursive traversal.

This is project is simple Example of given Scenario and i did not make any UI stuff here

Suppose we have an order processing application that receives orders. In our application we have special logic for our most favored customers, because their orders are handled differently than other orders.
Also large orders with an amount larger than $30000 are handeled differently than the smaller orders.
For small orders we handle international orders differently than domestic orders.

Therefore i am implementing this using Chain of Responsibility pattern.
