require 'selenium-webdriver'

Given('I am on {string}') do |url|
  @driver.navigate.to url
end

When('I press the {string} button') do |button_text|
  button = @driver.find_element(:xpath, "//button[contains(text(),'#{button_text}')]")
  button.click
end

Then('I should fill the {string}, {string}, {string} but not {string} fields with the corresponding values') do |name_field, email_field, username_field, password_field|
  name_input = @driver.find_element(:name, name_field)
  email_input = @driver.find_element(:name, email_field)
  username_input = @driver.find_element(:name, username_field)
  password_input = @driver.find_element(:name, password_field)

  # Replace 'your_name', 'your_email', 'your_username' with actual values
  name_input.send_keys('your_name')
  email_input.send_keys('your_email')
  username_input.send_keys('your_username')
  # Do not fill the password field
end

Then('I click the option {string} and the {string} button') do |terms_checkbox, register_button|
  terms_checkbox = @driver.find_element(:xpath, "//label[contains(text(),'#{terms_checkbox}')]/preceding-sibling::input")
  register_button = @driver.find_element(:xpath, "//button[contains(text(),'#{register_button}')]")
  
  terms_checkbox.click
  register_button.click
end

Then('I should see the message:') do |expected_message|
  # Implement code to verify if the displayed message matches the expected message
  actual_message = @driver.find_element(:xpath, '//div[@class="error-message"]').text
  expect(actual_message).to eq(expected_message)
end
