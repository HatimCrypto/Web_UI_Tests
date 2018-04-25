require 'selenium-webdriver'


Given(/^I am on the homepage$/) do
  driver.find_element(:class, 'heading')
end

When("I select login") do
  LoginButton = driver.find_element(:css, 'ul.nav:nth-child(4)')
  LoginButton.click
end

And("I enter a valid username and password") do
  wait.until { driver.find_element(:name, 'email')}
  Email = driver.find_element(:name, 'email')
  Email.click
  Email.send_keys 'hatim.v@hotmail.co.uk'
  Password = driver.find_element(:name, 'password')
  Password.click
  Password.send_keys 'Temp0rary'
end

Then("I should be successfully logged in") do
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
  wait.until {driver.find_element(:css, '.navbar-profile > a:nth-child(1) > span:nth-child(2)')}.click
  wait.until {driver.find_element(:css, 'body > div.normal-browser > div.navbar.navbar-main.navbar-fixed-top.visible-md-block.visible-lg-block.visible-sm-block > div > div > div.navbar-top.collapse.navbar-collapse > ul.nav.navbar-nav.navbar-right.ng-scope > li.dropdown.navbar-profile.open > ul > li:nth-child(7) > a')}
end
