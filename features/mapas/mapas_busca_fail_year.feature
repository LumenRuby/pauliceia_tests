# features/javascript_mapas_busca_fail_year.feature

Feature: Testing failed busca

 Scenario: Tests a wrong address
    Given I am on the "Mapa" section of the site
    When I fill the "Procure um endereço" with a  right address and wrong year
    Then I should see the message:
    """
    Formato inválido
    Pesquise por: rua, número, ano (0000)
    """
