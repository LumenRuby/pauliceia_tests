And("I close the beta warning message") do
  find(:xpath, '/html/body/div/section/div/section/div/section[3]/header/button/i', wait: 5).click
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
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/div/div/div/div[1]/button/span', wait: 5).click
end
