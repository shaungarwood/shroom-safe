# frozen_string_literal: true

require 'rails_helper'
require 'capybara/rspec'

# These drivers are essentially the same :selenium_chrome
#   and :selenium_chrome_headless but the default
#   implmentation of these are using the
#   depricated :capabilities, which throws a warning.

Capybara.register_driver :chrome_headless do |app|
  opts = Selenium::WebDriver::Chrome::Options.new
  opts.add_argument('--headless')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: opts)
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

RSpec.configure do |config|
  config.before(:each, type: :system) do
    if ENV['SHOW_BROWSER'].present?
      driven_by :chrome
    else
      driven_by :chrome_headless
    end
  end
end
