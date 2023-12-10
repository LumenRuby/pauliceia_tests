And("I close the beta warning message") do
  close_button = find(:xpath, '/html/body/div/section/div/section/div/section[3]/header/button/i')
  
   # Click the button to close the layer window
  close_button.click
end

And("I open the Layer sub-section") do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/p/b', wait: 5).click
end

And("I press the Add and Delete Layers button") do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/section/div/div/div/button/div/div/img', wait: 5).click
end

And("I select article {int} and press the associated button") do |article_number|

  article_title_xpath = "/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[2]/article[#{article_number}]/div/div[1]/p[1]"
  button_xpath = "/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[2]/article[#{article_number}]/div/div[2]"

  # Find the article's title element and get its text
  article_title = find(:xpath, article_title_xpath).text

  # Click the button associated with the selected article
  find(:xpath, button_xpath).click
end

And("I close the layer window") do
  # Find the button to close the layer window
  close_button = find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[1]/button/span', wait: 5)

  close_button.click

  max_wait_time = 10

  # Wait for the button to become invisible (layer window to fully close)
  max_wait_time.times do
    break unless close_button.visible?

    sleep 1
  end
end

Then("the screen should be the same as {string}") do |reference_screenshot_path|
  # Capture a screenshot of the current page
  screenshot_path = 'screenshots/current_screenshot.png'
  page.save_screenshot(screenshot_path, full: true)

  # Load the images for comparison using RMagick
  current_image = Magick::Image.read(screenshot_path).first
  reference_image = Magick::Image.read(reference_screenshot_path).first

  # Calculate the Mean Squared Error (MSE) between the images
  mse = current_image.compare_channel(reference_image, Magick::MeanSquaredErrorMetric)[1]

  puts "Mean Squared Error: #{mse}"

  # Assert that the MSE is close to 0 (adjust the threshold as needed)
  expect(mse).to be_within(0.095).of(0)
end
