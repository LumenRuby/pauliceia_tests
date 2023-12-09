# features/javascript_login_email_sucess.feature

Feature: Testing succesfull Login with e-mail

 Scenario: Verify if the Login via e-mail works
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should fill the "E-mail" and "Senha" fields with the correct e-mail and senha and click the "Entrar" button.
