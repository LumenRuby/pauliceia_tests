# features/javascript_mapas_busca.feature

Feature: Testing succesfull busca

 Scenario: Tests a correct address
    Given I am on the "Mapa" section of the site
    When I fill the "Procure um endereço" with a valid address and year
    Then I should see the message:
    """
    Formato inválido
    Pesquise por: rua, número, ano (0000)
    """