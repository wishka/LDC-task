require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get categories_new_url
    assert_response :success
  end

  test "should get has_many:products" do
    get categories_has_many:products_url
    assert_response :success
  end

end
