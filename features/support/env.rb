# frozen_string_literal: true

Bundler.require
require 'active_support/all'
require 'airborne'
require 'capybara/cucumber'
require 'chronic'
require 'dotenv'
require 'date'
require 'faker'
require 'logger'
require 'pry'
require 'time'
require 'timeout'
Dotenv.load

include Airborne

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome,
  options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
end
Capybara.default_driver = :chrome
Capybara.default_max_wait_time = 3
