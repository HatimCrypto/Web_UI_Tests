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
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
end

Then("I should be successfully logged in") do
  wait.until {driver.find_element(:css, '.navbar-profile > a:nth-child(1) > span:nth-child(2)')}
end
