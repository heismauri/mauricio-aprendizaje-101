require 'test_helper'

class ProspectosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prospectos_new_url
    assert_response :success
  end

  test "should get create" do
    get prospectos_create_url
    assert_response :success
  end

end
