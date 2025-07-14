require "test_helper"

class CaretakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caretaker = caretakers(:one)
  end

  test "should get index" do
    get caretakers_url
    assert_response :success
  end

  test "should get new" do
    get new_caretaker_url
    assert_response :success
  end

  test "should create caretaker" do
    assert_difference("Caretaker.count") do
      post caretakers_url, params: { caretaker: { address: @caretaker.address, category: @caretaker.category, email: @caretaker.email, first_name: @caretaker.first_name, last_name: @caretaker.last_name, mobile: @caretaker.mobile } }
    end

    assert_redirected_to caretaker_url(Caretaker.last)
  end

  test "should show caretaker" do
    get caretaker_url(@caretaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_caretaker_url(@caretaker)
    assert_response :success
  end

  test "should update caretaker" do
    patch caretaker_url(@caretaker), params: { caretaker: { address: @caretaker.address, category: @caretaker.category, email: @caretaker.email, first_name: @caretaker.first_name, last_name: @caretaker.last_name, mobile: @caretaker.mobile } }
    assert_redirected_to caretaker_url(@caretaker)
  end

  test "should destroy caretaker" do
    assert_difference("Caretaker.count", -1) do
      delete caretaker_url(@caretaker)
    end

    assert_redirected_to caretakers_url
  end
end
