# language: en

Feature: New user registration

@registration
Scenario: Register a new user by directing them to the Categories screen
    Given that you perform the initial tutorial
    When to start registration
    Then I should see the fields email, phone number, password
    And then send the token correto
    Then I should see the 'Categories' and the 'Popular' section
