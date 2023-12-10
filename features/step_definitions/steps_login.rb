require 'selenium-webdriver'

Given("I am on the home page") do
    visit 'https://pauliceia.unifesp.br/portal/home'
  end
  
  When('I click on the login button') do
    find('.btn-login').click
  end
  
  Then('I should be redirected to the login page') do
    expect(current_path).to eq('/portal/login')
  end

