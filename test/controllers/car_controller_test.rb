require 'test_helper'

class CarControllerTest < ActionController::TestCase
  test "should get newCar" do
    get :newCar
    assert_response :success
  end

end
