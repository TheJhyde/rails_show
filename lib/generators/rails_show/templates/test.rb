require 'test_helper'

class <%= name.capitalize.pluralize %>ControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get <%= name.pluralize %>_path
    assert_response :success
  end

  test "show" do
    get <%= name.singularize %>_path("app")
    assert_response :success
  end
end
