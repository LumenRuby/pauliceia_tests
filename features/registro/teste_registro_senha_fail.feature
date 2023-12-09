# features/javascript_registro_email_fail.feature

Feature: Testing Invalid email

   Scenario: Verify if e-mail and senha are wrong:
    Given I am on 'https://pauliceia.unifesp.br/portal/login'
    When I press the "Registrar-se agora" button 
    Then I should fill the "Nome" , "Senha", "Nome de Usuário" but not "E-mail" fields with the corresponding values, and click the option "Eu concordo com os termos de uso" and the "Cadastrar" button. Then I should see the message:
    """
    Preencha este campo
    """
