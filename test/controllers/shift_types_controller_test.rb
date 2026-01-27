require "test_helper"

class ShiftTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift_type = shift_types(:one)
  end

  test "should get index" do
    get shift_types_url, as: :json
    assert_response :success
  end

  test "should create shift_type" do
    assert_difference("ShiftType.count") do
      post shift_types_url, params: { shift_type: { shift_type: @shift_type.shift_type } }, as: :json
    end

    assert_response :created
  end

  test "should show shift_type" do
    get shift_type_url(@shift_type), as: :json
    assert_response :success
  end

  test "should update shift_type" do
    patch shift_type_url(@shift_type), params: { shift_type: { shift_type: @shift_type.shift_type } }, as: :json
    assert_response :success
  end

  test "should destroy shift_type" do
    assert_difference("ShiftType.count", -1) do
      delete shift_type_url(@shift_type), as: :json
    end

    assert_response :no_content
  end
end
