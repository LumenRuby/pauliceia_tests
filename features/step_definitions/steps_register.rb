require 'selenium-webdriver'

Given("I am on the login page") do
    visit 'https://pauliceia.unifesp.br/portal/login'
  end
  
  When('I click on the register button') do
    find('.register').click
  end
  
  Then('I should be redirected to the registration page') do
    expect(current_path).to eq('/portal/register')
  end
  
