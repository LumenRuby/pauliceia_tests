# features/javascript_login_email_sucess.feature

Feature: Testing Login

 Scenario: Verify if the Login via Google+ feature works
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should click the "Acesso com o Google+" button and be sent to an accounts.google.com/signin/oauth page.
 Scenario: Verify if the Login via e-mail works
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should fill the "E-mail" and "Senha" fields with the correct e-mail and senha and click the "Entrar" button.
 Scenario: Verify if the e-mail is wrong
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should fill the "E-mail" and "Senha" fields with the wrong e-mail and correct senha and click the "Entrar" button. Then I should see the message:
    """
    ERROR
    E-mail ou senha incorreta!
    """
  Scenario: Verify if the senha is wrong
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should fill the "E-mail" and "Senha" fields with the correct e-mail and wrong senha and click the "Entrar" button. Then I should see the message:
    """
    ERROR
    E-mail ou senha incorreta!
    """
   Scenario: Verify if e-mail and senha are wrong:
    Given I am on the JavaScript site home page
    When I press the "Entrar" button to access the "Login" section
    Then I should fill the "E-mail" and "Senha" fields with the wrong e-mail and senha and click the "Entrar" button. Then I should see the message:
    """
    ERROR
    E-mail ou senha incorreta!
    """
