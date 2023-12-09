Feature: Testing Layer visuals

  Scenario: Verify the correct map is shown in layer (article 1)
    Given I am on the JavaScript site home page
    When I press the "Mapa" button to access the "Mapa" section
    And I close the beta warning message
    And I open the Layer sub-section
    And I press the Add and Delete Layers button
    And I select article 1 and press the associated button 
    And I close the layer window
    Then the screen should be the same as "features/screenshots_ref/layer1.png"

  Scenario: Verify the correct map is shown in layer (article 2)
    Given I am on the JavaScript site home page
    When I press the "Mapa" button to access the "Mapa" section
    And I close the beta warning message
    And I open the Layer sub-section
    And I press the Add and Delete Layers button
    And I select article 2 and press the associated button 
    And I close the layer window
    Then the screen should be the same as "features/screenshots_ref/layer2.png"

  Scenario: Verify the correct map is shown in layer (article 3)
    Given I am on the JavaScript site home page
    When I press the "Mapa" button to access the "Mapa" section
    And I close the beta warning message
    And I open the Layer sub-section
    And I press the Add and Delete Layers button
    And I select article 3 and press the associated button 
    And I close the layer window
    Then the screen should be the same as "features/screenshots_ref/layer3.png"

