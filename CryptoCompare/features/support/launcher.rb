require 'selenium-webdriver'

def driver
	@driver ||= Selenium::WebDriver.for :chrome
end

def wait
	@wait ||= Selenium::WebDriver::Wait.new(:timeout => 10)
end

Before('@global') do 
	Selenium::WebDriver::Chrome.driver_path="/var/lib/jenkins/tools/chromedriver.exe"
	driver.navigate.to "https://rc-server.cryptocompare.com:3750"
	driver.manage.window.resize_to(1280,720)
end


After('@global') do
	driver.quit
end

