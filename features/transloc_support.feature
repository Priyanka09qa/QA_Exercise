Feature: A skeleton cucumber selenium project for TransLoc

  Scenario: I want to log in to the the-internet.herokuapp.com portal
    Given I navigate to the-internet.herokuapp
    And   I fill in the username with "tomsmith" and password with "SuperSecretPassword!"
    When  I tap the log in button
    Then  I should be logged in
    When  I tap the logout button
    Then  I should be logged out

  Scenario: I want to verify dynamic_loading elements on the the-internet.herokuapp.com/dynamic_loading portal
    Given I navigate to dynamic_loading page
    When  I tap the Example 1: Element on page that is hidden button
    Then  I should see start button on Example 1 page
    When  I tap on start button
    Then I should see "Hello World!" message