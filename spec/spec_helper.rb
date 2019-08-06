require 'capybara/rspec'
require 'sidekiq/testing'
require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require_relative '../src/main'

Capybara.app = LambdaMail::App
Capybara.server = :webrick
