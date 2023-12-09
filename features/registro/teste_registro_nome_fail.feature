# features/javascript_registro_nome_fail.feature

Feature: Testing Invalid name

   Scenario: Verify if e-mail and senha are wrong:
    Given I am on 'https://pauliceia.unifesp.br/portal/login'
    When I press the "Registrar-se agora" button 
    Then I should fill the "E-mail" , "Senha", "Nome de Usuário" but not "Nome" fields with the corresponding values, and click the option "Eu concordo com os termos de uso" and the "Cadastrar" button. Then I should see the message:
    """
    Preencha este campo
    """
