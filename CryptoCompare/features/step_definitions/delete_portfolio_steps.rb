
require 'selenium-webdriver'

#Given i have logged in - Reused from create_portfolio.feature

And("I would like to delete my portfolio") do
  driver.navigate.to "https://rc-server.cryptocompare.com:3750/portfolio/"
  wait.until { driver.find_element(:xpath, '//*[@id="tab-content-0"]/div/md-content/div[1]/div[2]/button[1]/md-icon')}.click

end

When("I delete my portfolio") do
  wait.until { driver.find_element(:css, 'body > div.md-dialog-container.ng-scope > md-dialog > form > md-dialog-actions > div > div > button.md-raised.md-warn.md-button.md-ink-ripple')}.click
  wait.until { driver.find_element(:css, 'body > div.md-dialog-container.ng-scope > md-dialog > md-dialog-actions > button:nth-child(2)')}.click
end

Then("it should no longer appear") do
  #check that user no longer has any portfolio. May need to change once user has multiple portfolios.
  wait.until { driver.find_element(:css, 'body > div.normal-browser > div.main-wrapper > div > div > portfolio-container > md-content > div > div:nth-child(2) > div.ng-scope > div > div > div.emptyporfolio-footer > button')}
end

