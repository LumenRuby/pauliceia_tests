require 'selenium-webdriver'

Then('I should click the {string} button and be sent to an accounts.google.com/signin/oauth page') do |google_button_text|
  click_link button_text 
end
