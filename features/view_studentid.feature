Feature: View Student ID
    
    As a signed-in user I should be able to see Student ID in order to distinguish students with the same name

    Scenario: view student id from gradebook
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        Then I should see Student ID

    Scenario: view student id from student profile
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        Then I should see everyone's grades
        And I click "Show" on a post
        Then I should see Student ID

    Scenario: view student id when editing a student grade
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        Then I should see everyone's grades
        And I click "Edit" on a post
        Then I should see Student ID

    Scenario: view student id when adding a new grade
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        Then I should see everyone's grades
        And I click "New Grade" on a post
        Then I should see Student ID