Feature: User posts to blog

  In order to share my thoughts with the world
  As a blog author
  I want to post to my blog

  Scenario: Create a valid blog post
    Given I am on the new post page
    When I fill in "Title" with "My Cat Miffles"
    And I fill in "Body" with "ZOMG, my cat Miffles is so smart!"
    And I press "Create Post"
    Then I should be on the "My Cat Miffles" post page
    And I should see "Post successfully created"
    And I should see "My Cat Miffles"
