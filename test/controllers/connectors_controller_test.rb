require "test_helper"

class ConnectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @connector = connectors(:one)
  end

  test "should get index" do
    get connectors_url
    assert_response :success
  end

  test "should get new" do
    get new_connector_url
    assert_response :success
  end

  test "should create connector" do
    assert_difference('Connector.count') do
      post connectors_url, params: { connector: { course_id: @connector.course_id, user_id: @connector.user_id } }
    end

    assert_redirected_to connector_url(Connector.last)
  end

  test "should show connector" do
    get connector_url(@connector)
    assert_response :success
  end

  test "should get edit" do
    get edit_connector_url(@connector)
    assert_response :success
  end

  test "should update connector" do
    patch connector_url(@connector), params: { connector: { course_id: @connector.course_id, user_id: @connector.user_id } }
    assert_redirected_to connector_url(@connector)
  end

  test "should destroy connector" do
    assert_difference('Connector.count', -1) do
      delete connector_url(@connector)
    end

    assert_redirected_to connectors_url
  end
end
