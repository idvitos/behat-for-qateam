Feature: Log in
  In order to use website functionality
  As a website user
  I need to be able to log in

Scenario: Log in with valid data
   Given I am on "meego.drupalcompany.com"
   When I press button "Log in"
   And I fill in "E-mail or username" with "v.popovych+org11@internetdevels.ua" 
   And I fill in "Password" with 1 
   Then I should see "Log out"
