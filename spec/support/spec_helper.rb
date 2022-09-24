require 'factory_bot'
require 'faker'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.add_formatter 'Fuubar'

  Faker::Config.random = Random.new(config.seed)

  config.before(:all) do
    FactoryBot.reload
  end
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  # spec/spec_helper.rb

end
