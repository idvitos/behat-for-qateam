Feature: Log in
  In order to use website functionality
  As a website user
  I need to be able to log in


@javascript @1
Scenario: Log in with invalid e-mail
   Given I am on "http://meego.drupalcompany.com/"
   When I follow "Log in"
   And I fill in "E-mail or username" with "v.popov@internetdevels.ua" 
   And I fill in "Password" with "1" 
   And I press "Log in"
   Then I should see "Sorry, unrecognized username or password"


@javascript @2
Scenario: Log in with invalid password
   Given I am on "http://meego.drupalcompany.com/"
   When I follow "Log in"
   And I fill in "E-mail or username" with "v.popovych+org11@internetdevels.ua" 
   And I fill in "Password" with "111" 
   And I press "Log in"
   Then I should see "Sorry, unrecognized username or password"


@javascript @3
Scenario: Log in with empty fields
   Given I am on "http://meego.drupalcompany.com/"
   When I follow "Log in"
   And I press "Log in"
   Then I should see "E-mail or username field is required"
   And I should see "Password field is required"


@javascript @4
Scenario: Log in with valid data
   Given I am on "http://meego.drupalcompany.com/"
   When I follow "Log in"
   Then I should see "Login"
   And I fill in "E-mail or username" with "v.popovych+org11@internetdevels.ua" 
   And I fill in "Password" with "1" 
   And I press "Log in"
   Then I should see "Log Out"


@javascript @5
Scenario: Forgot password
   Given I am on "http://meego.drupalcompany.com/"
   When I follow "Log in"
   And I follow "Forgot password?"
   Then I should see "Forgot password?"
   And I fill in "Enter your e-mail" with "v.popovych+org11@internetdevels.ua"
   And I press "Send new password"
   Then I should see "Further instructions have been sent to your e-mail address"


@javascript @6
Scenario: Log in with invalid data and forgot password
   Given I am on "http://meego.drupalcompany.com/"
   When I follow "Log in"
   And I fill in "E-mail or username" with "v.popovych+org11@internetdevels.ua" 
   And I fill in "Password" with "234567" 
   And I press "Log in"
   Then I should see "Have you forgotten your password?"
   And I follow "Have you forgotten your password?"
   Then I should see "Forgot password?"
   And I fill in "Enter your e-mail" with "v.popovych+org11@internetdevels.ua"
   And I press "Send new password"
   Then I should see "Further instructions have been sent to your e-mail address"


