require 'selenium-webdriver'
require 'watir'
require 'watir-webdriver'

def driver
	@driver ||= Selenium::WebDriver.for :chrome
end

def wait
	@wait ||= Selenium::WebDriver::Wait.new(:timeout => 10)
end


attempts = 0
Before('@global') do 
	Selenium::WebDriver::Chrome.driver_path="chromedriver"
	driver.navigate.to "https://rc-server.cryptocompare.com:3750"
	driver.manage.window.resize_to(1280,720)
	rescue Net::ReadTimeout => 
    if attempts == 0
      attempts += 1
      retry
    else
      raise
    end
  end
end


After('@global') do
	driver.quit
end

