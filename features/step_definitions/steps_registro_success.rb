require 'selenium-webdriver'

Given('I am on {string}') do |url|
  @driver.navigate.to url
end

When('I press the {string} button') do |button_text|
  button = @driver.find_element(:xpath, "//button[contains(text(),'#{button_text}')]")
  button.click
end

Then('I should fill the {string}, {string}, {string}, and {string} fields with the corresponding values') do |email_field, password_field, username_field, name_field|
  email_input = @driver.find_element(:name, email_field)
  password_input = @driver.find_element(:name, password_field)
  username_input = @driver.find_element(:name, username_field)
  name_input = @driver.find_element(:name, name_field)

  # Replace 'your_email', 'your_password', 'your_username', 'your_name' with actual values
  email_input.send_keys('your_email')
  password_input.send_keys('your_password')
  username_input.send_keys('your_username')
  name_input.send_keys('your_name')
end

Then('I click the option {string} and the {string} button') do |terms_checkbox, register_button|
  terms_checkbox = @driver.find_element(:xpath, "//label[contains(text(),'#{terms_checkbox}')]/preceding-sibling::input")
  register_button = @driver.find_element(:xpath, "//button[contains(text(),'#{register_button}')]")
  
  terms_checkbox.click
  register_button.click
end

Then('I should see the message:') do |expected_message|
  # Implement code to verify if the displayed message matches the expected message
  actual_message = @driver.find_element(:xpath, '//div[@class="success-message"]').text
  expect(actual_message).to eq(expected_message)
end
