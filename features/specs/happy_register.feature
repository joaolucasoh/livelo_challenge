# language: en

Feature: New user registration


Background: Realize the initial tutorial
    Given that you perform the initial tutorial

@login_without_register
Scenario: Login without register a new user or with a existent user
    When to click on Skip
    Then I should see the 'Categories' and the 'Popular' section

@registration
Scenario: Register a new user by directing them to the Categories screen
  When to start registration
  Then I should see the fields email, phone number, password
  And then send the valid code
  Then I should see the 'Categories' and the 'Popular' section

@skip_code
Scenario: Register a new user skiping code verification
  When to start registration
  Then I should see the fields email, phone number, password
  And not insert code and confirm
  Then I should see the 'Categories' and the 'Popular' section

