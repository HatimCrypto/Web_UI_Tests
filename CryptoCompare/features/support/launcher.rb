require 'selenium-webdriver'
require 'watir'
require 'watir-webdriver'


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



After('@global') do
	driver.quit
end

