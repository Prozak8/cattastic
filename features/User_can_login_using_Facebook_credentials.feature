Feature: User can log in using hers/his Facebook credentials
    As a user of the system
    In order to simplify the sign up/sign in process 
    I would like to be able to authenticate myself using Facebook 


Scenario: Visitor clicks on 'Login with Facebook' and gets authenticated
    Given I am on the landing page
    Then I click "Login with Facebook"
    And I should see "Successfully authenticated from Facebook account" 