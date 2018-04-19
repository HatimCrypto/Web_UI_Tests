require 'selenium-webdriver'
require 'watir'
require 'watir-webdriver'
require 'rspec/retry'

def driver
	@driver ||= Selenium::WebDriver.for :chrome
end

def wait
	@wait ||= Selenium::WebDriver::Wait.new(:timeout => 10)
end

Before('@global') do 
	Selenium::WebDriver::Chrome.driver_path="chromedriver"
	driver.navigate.to "https://rc-server.cryptocompare.com:3750"
	driver.manage.window.resize_to(1280,720)
	driver.manage.timeouts.page_load = 300
end

RSpec.configure do |config|
  # show retry status in spec process
  config.verbose_retry = true
  # Try five times (retry 4 times)
  config.default_retry_count = 5
  # Only retry when Selenium raises Net::ReadTimeout
  config.exceptions_to_retry = [Net::ReadTimeout]
end


After('@global') do
	driver.quit
end

