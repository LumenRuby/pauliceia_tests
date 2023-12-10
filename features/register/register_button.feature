Feature: Redirecionamento de Login para Registro

  Scenario: Clicar no botão "Registre-se agora" na tela de Login
    Given I am on the login page

    When I click on the register button

    Then I should be redirected to the registration page

    
