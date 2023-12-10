def find_related_card_text(card_title_element)
  # Use the common ancestor class "card-body" in the XPath
  common_ancestor = card_title_element.find(:xpath, 'ancestor::div[@class="card-body"]')

  # Use find within the common ancestor to get the related card-text div
  related_card_text_div = common_ancestor.find(:xpath, './/div[@class="card-text"]')

  # Return the Capybara element for further actions
  related_card_text_div
end


Given("I am on the JavaScript site home page") do
  visit 'https://pauliceia.unifesp.br/portal/home' # Adjust the path as needed
end

When("I press the {string} button to access the {string} section") do |button_text, section_name|
  # Find the button based on its text and click it
  click_link button_text
end

Then("I should see the message after title {string}:") do |expected_title, expected_message_after_title|
  # Find the h5 element with the specified class
  card_title_element = find("h5.card-title", text: expected_title)

  # Use the helper method to find the related card-text div
  related_card_text_div = find_related_card_text(card_title_element)

  # Compare the text content within the related card-text div with the expected message
  expect(related_card_text_div.text.strip).to eq(expected_message_after_title)
end

Then("I should see the citation instruction:") do |expected_citation_instruction|
  # Find the div containing the citation instruction using the provided XPath
  citation_instruction_div = find(:xpath, '/html/body/div/section/div/section/div[2]/header/div/div/div/div/div')

  # Compare the text content within the div with the expected citation instruction
  expect(citation_instruction_div.text.strip).to eq(expected_citation_instruction.strip)
end

