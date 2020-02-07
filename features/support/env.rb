require 'capybara'
require 'rspec'
require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.configure do |config|
	config.default_driver = :selenium
	config.app_host = 'https://ninvoices-qa.herokuapp.com'
end

Capybara.default_max_wait_time = 15
