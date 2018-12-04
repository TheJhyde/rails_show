require 'test_helper'
require 'generators/view_source/view_source_generator'

module RailsShow
  class ViewSourceGeneratorTest < Rails::Generators::TestCase
    tests ViewSourceGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
