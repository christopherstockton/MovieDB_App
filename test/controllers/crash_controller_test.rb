require 'test_helper'

class CrashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crash_index_url
    assert_response :success
  end

end
