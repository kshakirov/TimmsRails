require 'test_helper'

class AttributeSetsControllerTest < ActionController::TestCase
  setup do
    @attribute_set = attribute_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute_set" do
    assert_difference('AttributeSet.count') do
      post :create, attribute_set: { legend_img_filename: @attribute_set.legend_img_filename, name: @attribute_set.name, string: @attribute_set.string }
    end

    assert_redirected_to attribute_set_path(assigns(:attribute_set))
  end

  test "should show attribute_set" do
    get :show, id: @attribute_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attribute_set
    assert_response :success
  end

  test "should update attribute_set" do
    patch :update, id: @attribute_set, attribute_set: { legend_img_filename: @attribute_set.legend_img_filename, name: @attribute_set.name, string: @attribute_set.string }
    assert_redirected_to attribute_set_path(assigns(:attribute_set))
  end

  test "should destroy attribute_set" do
    assert_difference('AttributeSet.count', -1) do
      delete :destroy, id: @attribute_set
    end

    assert_redirected_to attribute_sets_path
  end
end
