require 'test_helper'

class GuidancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guidance = guidances(:one)
  end

  test "should get index" do
    get guidances_url
    assert_response :success
  end

  test "should get new" do
    get new_guidance_url
    assert_response :success
  end

  test "should create guidance" do
    assert_difference('Guidance.count') do
      post guidances_url, params: { guidance: { system_id: @guidance.system_id, title: @guidance.title } }
    end

    assert_redirected_to guidance_url(Guidance.last)
  end

  test "should show guidance" do
    get guidance_url(@guidance)
    assert_response :success
  end

  test "should get edit" do
    get edit_guidance_url(@guidance)
    assert_response :success
  end

  test "should update guidance" do
    patch guidance_url(@guidance), params: { guidance: { system_id: @guidance.system_id, title: @guidance.title } }
    assert_redirected_to guidance_url(@guidance)
  end

  test "should destroy guidance" do
    assert_difference('Guidance.count', -1) do
      delete guidance_url(@guidance)
    end

    assert_redirected_to guidances_url
  end
end
