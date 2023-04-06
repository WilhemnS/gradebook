Feature: Deleting Grades

As a signed in teacher I should be able to delete a grade 

As a signed in TA I should not be able to see the Destroy button on the homepage

    Scenario: Viewing detailed grade information as a teacher, should be able to delete the grade
        Given there are grades in the gradebook
        And I sign in as a teacher
        When I visit the homepage
        And I click "Destroy" on a post
        Then that post should be deleted


    Scenario:As a TA user I should not be able to see the Destroy button
        Given there are grades in the gradebook
        And I sign in as a TA
        When I visit the homepage
        Then I should not be able to see the "Destroy" button



