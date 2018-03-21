require 'selenium-webdriver'

def driver
	@driver ||= Selenium::WebDriver.for :chrome
end

def wait
	@wait ||= Selenium::WebDriver::Wait.new(:timeout => 10)
end

Before('@global') do 
	Selenium::WebDriver::Chrome.driver_path="C:/Users/CC Guest/Documents/CryptoCompare/QA/chromedriver.exe"
	driver.navigate.to "https://www.cryptocompare.com"
	driver.manage.window.resize_to(1080,720)
end


After('@global') do
	driver.quit
end

