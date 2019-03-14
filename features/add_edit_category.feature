Feature: Add/edit Categories
  As a blog administrator
  In order to better organize the articles
  I want to be able to follow Categories to add or edit categories to my blog

 Background:
   Given the blog is set up
   And I am logged into the admin panel
   
 Scenario: Successfully jump to the category page
   When I follow "Categories"
   Then I should see "Categories"
   And I should see "Keywords"
   And I should see "Permalink"
   And I should see "Description"
   And I should see "General"
   
 Scenario: Successfully add new categories
    When I follow "Categories"
    And I fill in "category_name" with "News"
    And I fill in "category_keywords" with "news"
    And I fill in "category_description" with "Happened everyday"
    And I press "Save"
    Then I should see "Category was successfully saved"
    And I should see "News"
    And I should see "no articles"
    
 Scenario: Successfully edit existed categories
    When I follow "Categories"
    And I follow "General"
    And I fill in "category_name" with "General list"
    And I fill in "category_keywords" with "general list 1"
    And I fill in "category_description" with "general articles covered my life"
    And I press "Save"
    Then I should see "Category was successfully saved"
    And I should see "General list"
    And I should see "no articles"
    
    