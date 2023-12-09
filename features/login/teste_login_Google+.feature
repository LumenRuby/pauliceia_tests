# features/javascript_about_message.feature

Feature: Testing Login

 Scenario: Verify if the Login via Google+ feature works
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should click the "Acesso com o Google+" button and be sent to an accounts.google.com/signin/oauth page.
