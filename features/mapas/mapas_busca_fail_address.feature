# features/javascript_mapas_busca_fail.feature

Feature: Testing failed busca

 Scenario: Tests a wrong address
    Given I am on the "Mapa" section of the site
    When I fill the "Procure um endereço" with a wrong address and right year
    Then I should see the place I am looking for
