# require 'test_helper'

class CodeControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get code_index_path
    assert_response :success
  end

  test "show" do
    get code_path("app")
    assert_response :success
  end
end
