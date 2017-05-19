require 'simplecov'
require 'simplecov-console'
#SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
#  SimpleCov::Formatter::HTMLFormatter,
#  SimpleCov::Formatter::Console,
#]
SimpleCov.start do
  add_filter ".bundle"
  add_filter "template_steps"
end

require 'bundler/setup'
require 'sinatra'
Sinatra::Application.environment = :test
Bundler.require :default, Sinatra::Application.environment
require 'rspec'

Sinatra::Application.root = Sinatra::Application.root + '/..'
require Sinatra::Application.root + '/app'
disable :run

require 'capybara/dsl'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
  config.include Capybara::DSL
end