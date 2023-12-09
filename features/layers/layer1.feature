Feature: Testing Layer visuals

  Scenario: Verify a message is shown in card 1
    Given I am on the JavaScript site home page
    When I press the "Mapa" button to access the "Mapa" section
    And I close the beta warning message
    And I open the Layer sub-section
    And I press the Add and Delete Layers button
    And I select article 1 and press the associated button 
    And I close the layer window
    Then I should see the message after title "Quem desenvolveu?": 
      """
      O projeto é uma parceria entre a UNIFESP (campi de Guarulhos e São José dos Campos), o Arquivo do Estado de SP, o INPE (Instituto Nacional de Pesquisas Espaciais) e a Emory University (Estados Unidos).
      Mas a concepção de “ciência aberta” que orienta o projeto faz dele uma iniciativa amigável à participação de todos os interessados em diversas etapas de sua execução.
      """

