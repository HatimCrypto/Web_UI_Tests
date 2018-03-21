require 'selenium-webdriver'

Given("I have entered cryptoqween in the search field") do 
  SearchField = driver.find_element(:css, 'body > div.normal-browser > div.navbar.navbar-main.navbar-fixed-top.visible-md-block.visible-lg-block.visible-sm-block > div > div > div.navbar-top.collapse.navbar-collapse > div > form > div > input')
  SearchField.click
  SearchField.send_keys 'cryptoqween'
end

When("I select cryptoqween") do
  sleep 2
  SearchField.send_keys:return
end

Then("I should be taken to the correct user page") do
  wait.until { driver.find_element(:css, 'body > div.normal-browser > div.main-wrapper > div > div > profile-info-box > div > div.col-md-10 > div.header-profile > h1')}
end
