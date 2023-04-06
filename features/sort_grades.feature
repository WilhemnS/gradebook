Feature: Sort Grades 

As a signed in user, so I can browse the lowest or highest grades I want to be able to sort the grades column by value.

Scenario: I should see the "ASC" button
    Given there are grades in the gradebook
    And I sign in 
    When I visit the homepage
    Then I should see the "ASC" button

Scenario: I should see the "DESC" button
    Given there are grades in the gradebook
    And I sign in 
    When I visit the homepage
    Then I should see the "DESC" button
   
Scenario: When I click on the "ASC" button, I should see the lowest grade first
    Given there are grades in the gradebook
    And I sign in 
    When I visit the homepage
    When I click "ASC" 
    Then I should see the smallest grade first

Scenario: When I click on the "DESC" button, I should see the largest grade first
    Given there are grades in the gradebook
    And I sign in 
    When I visit the homepage
    When I click "DESC"
    Then I should see the largest grade first
