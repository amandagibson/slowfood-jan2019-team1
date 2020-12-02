Feature: Visitor can see products on landing page
    As a visitor,
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background:
        Given the following products exist
        | name  | description     | price |
        | Pizza | soft and fluffy | 100   |
        | Pasta | Tender and rich | 90    |

    Scenario: Visitor can see a list of products
        Given I visit the landing page
        Then I should see "Pizza"
        And I should see "soft and fluffy"
        And I should see "100 kr"
        And I should see "Pasta"
        And I should see "Tender and rich"
        And I should see "90 kr"
