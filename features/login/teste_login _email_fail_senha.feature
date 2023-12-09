# features/javascript_login_email_sucess.feature

Feature: Testing Login

   Scenario: Verify if the senha is wrong
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should fill the "E-mail" and "Senha" fields with the correct e-mail and wrong senha and click the "Entrar" button. Then I should see the message:
    """
    ERROR
    E-mail ou senha incorreta!
    """
