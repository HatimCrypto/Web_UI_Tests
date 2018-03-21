require 'selenium-webdriver'


Given("I have entered Bitcoin in the search field") do
  wait.until { driver.find_element(:css, 'body > div.normal-browser > div.navbar.navbar-main.navbar-fixed-top.visible-md-block.visible-lg-block.visible-sm-block > div > div > div.navbar-top.collapse.navbar-collapse > div > form > div > input')}
  SearchField = driver.find_element(:css, 'body > div.normal-browser > div.navbar.navbar-main.navbar-fixed-top.visible-md-block.visible-lg-block.visible-sm-block > div > div > div.navbar-top.collapse.navbar-collapse > div > form > div > input')
  SearchField.click
  SearchField.send_keys 'Bitcoin'

end

When("I select Bitcoin") do
  sleep 2
  SearchField.send_keys:return
end

Then("I should be taken to the correct coin page") do
  wait.until { driver.find_element(:link_text, 'Bitcoin')}
end


