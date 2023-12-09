# features/javascript_about_message.feature

Feature: Testing Messages in the "About" Section

  Scenario: Verify a message is shown in card 1
    Given I am on the JavaScript site home page
    When I press the "Sobre" button to access the "About" section
    Then I should see the message after title "Quem desenvolveu?": 
      """
      O projeto é uma parceria entre a UNIFESP (campi de Guarulhos e São José dos Campos), o Arquivo do Estado de SP, o INPE (Instituto Nacional de Pesquisas Espaciais) e a Emory University (Estados Unidos).
      Mas a concepção de “ciência aberta” que orienta o projeto faz dele uma iniciativa amigável à participação de todos os interessados em diversas etapas de sua execução.
      """

  Scenario: Verify a message is shown in card 2
    Given I am on the JavaScript site home page
    When I press the "Sobre" button to access the "About" section
    Then I should see the message after title "Quem financiou?": 
      """
      O projeto foi um dos 4 contemplados pela chamada eScience 2016 da FAPESP (Fundação de Amparo a Pesquisa do Estado de São Paulo), que estimula a colaboração entre as ciências da computação e outras áreas de conhecimento.
      """

  Scenario: Verify a message is shown in card 3
    Given I am on the JavaScript site home page
    When I press the "Sobre" button to access the "About" section
    Then I should see the message after title "Qual tecnologia utilizada?": 
      """
      A Pauliceia 2.0 é uma plataforma de código aberto, base web e orientada a serviços. Ela foi implementada usando a biblioteca GIS TerraLib e o geoportal TerraBrasilis desenvolvido pelo INPE.
      A equipe também utiliza o software gvSIG, alternativa livre a aberta de SIG.
      A plataforma foi implementada com base no conceito de Single Page Application (SPA) usando a estrutura Vue.js desenvolvido em linguagem JavaScript e as ferramentas jQuery e OpenLayers.
      """
  
  Scenario: Verify a message is shown in card 4
    Given I am on the JavaScript site home page
    When I press the "Sobre" button to access the "About" section
    Then I should see the citation instruction: 
      """
      Como citar uma camada?
      «SOBRENOME», «Nome». «Nome da camada» [camada]. Data da criação. Plataforma Pauliceia 2.0: Mapeamento Colaborativo da História de São Paulo (1870-1940). Disponível em: http://www.pauliceia.dpi.inpe.br. Acesso em: dia mês. Ano.
      Exemplo:
      ALMEIDA, Cintia. Casas de tolerância de 1931 a 1955 [camada]. 19 nov. 2020. Plataforma Pauliceia 2.0: Mapeamento Colaborativo da História de São Paulo (1870-1940). Disponível em: http://www.pauliceia.dpi.inpe.br. Acesso em: 9 nov. 2021. 
      """
