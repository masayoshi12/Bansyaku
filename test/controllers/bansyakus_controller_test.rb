require 'test_helper'

class BansyakusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bansyakus_index_url
    assert_response :success
  end

end
