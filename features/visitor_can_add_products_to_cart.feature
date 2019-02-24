@javascript
Feature: Visitor can add products to cart

    As a visitor,
    In order to select products I want to buy
    I would like to be able to add products to an order

    Background:
        Given the following products exist
        | name  | description     | price |
        | Pizza | soft and fluffy | 100   |
        | Pasta | Tender and rich | 90    |
        Given the following user exists
        | email        |
        | joe@joes.com |


    Scenario: Visitor can add products to cart
        Given I visit the landing page
        And I click on "Add to cart" on "Pizza"
        Then I should see "1 item"
        When I click on "Proceed to checkout"
        And I fill in "Enter Email" with "joe@joes.com"
        And I fill in "Password" with "password"
        And I click on "Log in with password"