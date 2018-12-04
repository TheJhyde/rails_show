require 'test_helper'

class <%= name.capitalize %>ControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get <%= name %>_index_path
    assert_response :success
  end

  test "show" do
    get <%= name %>_path("app")
    assert_response :success
  end
end
