Feature: Visitor can sign up
  As a user,
  In order to finalise an order
  I would like to be able to sign up

		Background:
		  Given the following user exist
		  | email          |  password   |
		  | my@mail.com    |  password   |
			And I visit the signup page

		Scenario: User can sign up
			When I fill in "Email" with "my@mail.com"
			And I fill in "Password" with "password"
			And I fill in "Password confirmation" with "password"
			And I click on "Sign up"