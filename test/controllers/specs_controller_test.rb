require 'test_helper'

class SpecsControllerTest < ActionController::TestCase
  test "should get editSpecs" do
    get :editSpecs
    assert_response :success
  end

end
