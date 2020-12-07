Feature: add to cart
so I have a Scenario

Scenario: add to cart
Given click arrivals images
When navigating to next page and user can add the book
Then is 3 images and show "Selenium Ruby – Automation Practice Site" screen
And check reviews that book
And verify quantity is 1