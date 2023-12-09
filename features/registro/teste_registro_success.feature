# features/javascript_registro_success.feature

Feature: Testing Register

   Scenario: Verify if e-mail and senha are wrong:
    Given I am on 'https://pauliceia.unifesp.br/portal/login'
    When I press the "Registrar-se agora" button 
    Then I should fill the "E-mail" , "Senha", "Nome de Usuário" and "Nome" fields with the corresponding values, and click the option "Eu concordo com os termos de uso" and the "Cadastrar" button. Then I should see the message:
    """
    [Nome], O teu cadastro está quase pronto. Basta acessar o teu e-mail e seguir as instruções.
    """
