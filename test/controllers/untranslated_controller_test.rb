require "test_helper"

class UntranslatedControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get untranslated_index_url
    assert_response :success
  end
end
