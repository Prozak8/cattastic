Feature: User can vote on one cat
    As a user,
    In order to give my opinion about the different cats,
    I would like to be able to like or unlike a cat image.

    Background: User is on landing page
        Given I am on the landing page
        Then I should see "2" images

    Scenario: 
        When I click "like"
        Then I should see "2" images