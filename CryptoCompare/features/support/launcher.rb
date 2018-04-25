require 'selenium-webdriver'
require 'watir'
require 'watir-webdriver'


def driver
	options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')
    options.add_argument('--no-sandbox')
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--window-size=1280,1080')
	@driver ||= Selenium::WebDriver.for :chrome, options: options
end

def wait
	@wait ||= Selenium::WebDriver::Wait.new(:timeout => 10)
end

Before('@global') do 
	Selenium::WebDriver::Chrome.driver_path="chromedriver"
	driver.navigate.to "https://rc-server.cryptocompare.com:3750"
	driver.manage.window.resize_to(1280,1080)
	driver.manage.timeouts.page_load = 300
end



After('@global') do
	driver.quit
end

