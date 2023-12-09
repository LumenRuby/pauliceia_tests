require 'selenium-webdriver'

Then('I should fill the {string} and {string} fields with the correct e-mail and wrong senha and click the {string} button') do |email_field, password_field, login_button|
  fill email_field emailWrong
  fill password_field passwordWrong
  click_link login_button # Implement code to fill the specified fields with correct email, incorrect password, and click the login button
end

Then('I should see the message:') do |expected_message|
  expected_message # Implement code to verify if the displayed message matches the expected message
end
