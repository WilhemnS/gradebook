Feature: View Grades
    Scenario: view grades from homepage
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      Then I should see everyone's grades

    Scenario: view specific grade from homepage
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information

    Scenario: non-signed users should not see view gradebook 
      Given there are grades in the gradebook
      And I am non-signed user
      When I visit the homepage
      Then I should not be able to see View Gradebook
