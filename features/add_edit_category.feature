Feature: Add/edit Categories
  As a blog administrator
  In order to better organize the articles
  I want to be able to add or edit categories to my blog

 Scenario: Successfully add new categories or edit existed categories
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
    And I fill in "category_name" with "general"
    And I fill in "category_keywords" with "general"
    And I fill in "category_description" with "general articles"
    And I press "Save"
    Then I should see "Category was successfully saved"
    
 Scenario: Successfully edit existed categories
    Given the blog is set up
    And I am logged into the admin panel
    And I follow "Categories"
    And I follow "General"
    And I fill in "category_name" with "general list"
    And I fill in "category_keywords" with "general list 1"
    And I fill in "category_description" with "general articles covered my life"
    And I press "Save"
    Then I should see "Category was successfully saved"