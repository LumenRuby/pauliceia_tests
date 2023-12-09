require 'selenium-webdriver'

Given('I am on the JavaScript site home page') do
  visit 'https://pauliceia.unifesp.br/portal/home'# Implement code to navigate to the JavaScript site home page
end

When('I press the {string} button to access the {string} section') do |button_text, section|
  click_link button_text # Implement code to click the specified button to access the specified section
end

Then('I should click the {string} button and be sent to an accounts.google.com/signin/oauth page') do |google_button_text|
  click_link button_text # Implement code to click the specified Google+ button and verify the redirection
end
