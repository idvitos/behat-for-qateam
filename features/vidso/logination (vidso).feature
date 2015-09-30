Feature: Logination
  In order to view protected data
  As a customer
  I need to be able to login
  
  @javascript
  Scenario: Succesfull login with valid data
    Given I am on "/en"
    When I follow "Login"
    And I fill in "E-mail" with "d.shavaryn@internetdevels.ua"
    And I fill in "Password" with "782903"
    And I press "Log in"
    Then I should see "Logout"

  @javascript
  Scenario: Failed login with invalid password
    Given I am on "/en"
    When I follow "Login"
    And I fill in "E-mail" with "d.shavaryn@internetdevels.ua"
    And I fill in "Password" with "7829031"
    And I press "Log in"
    Then I should not see "Logout"
    And I should see "Sorry, unrecognized username or password"

  @javascript
  Scenario: Failed login with invalid E-mail
    Given I am on "/en"
    When I follow "Login"
    And I fill in "E-mail" with "invalid@internetdevels.ua"
    And I fill in "Password" with "782903"
    And I press "Log in"
    Then I should not see "Logout"
    And I should see "Sorry, unrecognized username or password"

  @javascript
  Scenario: Failed login without Login and E-Mail
    Given I am on "/en"
    When I follow "Login"
    And I press "Log in"
    Then I should not see "Logout"
    And I should see "E-mail field is required"
    And I should see "Password field is required"
 
  @javascript
  Scenario: Password recovery with valid e-mail
    Given I am on "/en"
    When I follow "Login"
    And I follow "Forgot Password?"
    And I fill in "E-mail" with "d.shavaryn@internetdevels.ua"
    And I press "E-mail new password"
    Then I should see "Further instructions have been sent to your e-mail address."   
