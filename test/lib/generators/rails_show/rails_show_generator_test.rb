require 'test_helper'
require 'generators/rails_show/rails_show_generator'

module RailsShow
  class RailsShowGeneratorTest < Rails::Generators::TestCase
    tests RailsShowGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
