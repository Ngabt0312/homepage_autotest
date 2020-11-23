Feature: reviews tab
so I have a Scenario

Scenario: check reviews tab
Given click arrivals images
When navigating to next page and user can add the book
Then is 3 images and show "Selenium Ruby – Automation Practice Site" screen
And check reviews that book