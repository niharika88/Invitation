require 'simplecov'

SimpleCov.start do
  minimum_coverage 90
  refuse_coverage_drop
  add_filter "/spec/"
end
require 'pry'

Dir['./lib/errors/*.rb'].each { |file| require file }
Dir['./lib/lib/*.rb'].each { |file| require file }
Dir['./lib/utils/*.rb'].each { |file| require file }

require  './lib/invitation_sender.rb'

RSpec.configure do |config|
  config.color = true
end
