require 'selenium-webdriver'


Given("I have logged in") do
  LoginButton = driver.find_element(:css, 'ul.nav:nth-child(4)')
  LoginButton.click
  wait.until { driver.find_element(:name, 'email')}
  Email = driver.find_element(:name, 'email')
  Email.click
  Email.send_keys 'hatim.v@hotmail.co.uk'
  Password = driver.find_element(:name, 'password')
  Password.click
  Password.send_keys 'Temp0rary'
  SubmitButton = driver.find_element(:css, '.btn-login')
  SubmitButton.click
  sleep 2
end

When("I enter the portfolio section") do
  wait.until {driver.find_element(:css, '.navbar-profile > a:nth-child(1) > span:nth-child(2)')}
  driver.navigate.to "https://www.cryptocompare.com/portfolio"
end

When("I choose to add a new portfolio") do
  wait.until { driver.find_element(:css, 'body > div.normal-browser > div.main-wrapper > div > div > portfolio-container > md-content > div > div:nth-child(2) > div.ng-scope > div > div > div.emptyporfolio-footer > button')}.click
  #Wait for pop up modal
  wait.until { driver.find_element(:id, 'dialogContent_7')}
  #Add portfolio name
  PortfolioName = driver.find_element(:name, 'portfolioName')
  PortfolioName.click
  PortfolioName.send_keys 'New Portfolio'
  #Select GBP as currency
  wait.until { driver.find_element(:css, '#select_value_label_0')}.click
  wait.until { driver.find_element(:css, '#select_option_10')}.click
  #wait for dropdown to close
  wait.until { driver.find_element(:css, '#select_value_label_0')}
  #Check that dropdown has closed
  driver.find_elements(:css, 'select_option_10').size == 0
  #Add portfolio description
  wait.until {driver.find_element(:css, '#input_4')}
  PortfolioDescription = driver.find_element(:css, '#input_4')
  PortfolioDescription.click
  PortfolioDescription.send_keys 'This is a test description'
  #Submit form
  CreateButton = driver.find_element(:css, 'body > div.md-dialog-container.ng-scope > md-dialog > form > md-dialog-actions > div > div > button')
  CreateButton.click
end

Then("I should see my new portfolio") do
  #Check that new portfolio has been created
  wait.until { driver.find_element(:css, 'body > div.normal-browser > div.main-wrapper > div > div > portfolio-container > md-content > div > div:nth-child(2) > div.ng-scope > div > md-tabs > md-tabs-wrapper > md-tabs-canvas > md-pagination-wrapper > md-tab-item')}
end

#Portfolio will be deleted to avoid duplicates


