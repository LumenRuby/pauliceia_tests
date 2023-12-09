And("I close the beta warning message") do
  find(:xpath, '/html/body/div/section/div/section/div/section[3]/header/button/i', wait: 5).click
end

And("I open the Layer sub-section") do
  find(:xpath, '/html/body/div[1]/section/div/section/div/div[2]/p/b', wait: 5).click
end
