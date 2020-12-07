Feature: add to more books in stock
so I have a Scenario

@morebooks
Scenario: add to more books in stock
Given click arrivals images
When navigating to next page and user can add the book
Then click add to cart
