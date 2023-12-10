# Testes do pauliceia front-end

Este repositório contém os testes criados pelo nosso grupo para algumas das features do front-end do projeto Paulicéia 2.0, a saber, referentes ao menu "Sobre" da página inicial, bem como o botão da página de login e um teste que confere se o mapa efetivamente exibe as camadas pedidas pelos usuários.

Houve tentativas de se testar as tarefas de login em si e de criar registro no site, porém não logramos em utilizar xpaths, placeholders ou mesmo nomes dos elementos de JavaScript do site, sempre recebendo erros de timeout quando tentamos acessá-lo. Uma inspeção no código fonte da página durante o carregamento mostrou que este se dava de modo muito vagaroso, o que consta no relatório de métricas.

## Dependencies

Requires:

-Rails, Bundler, Cucumber

## Install

sudo apt-get install libmagickwand-dev
bundle install

## Run

Use the cucumber gem to run tests (bundle exec cucumber)
