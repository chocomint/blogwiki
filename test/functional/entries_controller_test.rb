# vim:fileencoding=UTF-8
require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, :id => entries(:one).id
    assert_response :success
  end

  test "should put update" do
    assert_no_difference 'Entry.count' do
      put :update, :id => entries(:one).id, :entry => {:body => 'update'}
    end
    assert_redirected_to entry_path(entries(:one))
    assert_equal assigns(:entry).body, "update"
  end

  test "should delete destroy" do
    assert_difference 'Entry.count', -1 do
      delete :destroy, :id => entries(:one).id
    end
    assert_redirected_to entries_path
  end

  test "should get edit" do
    get :edit, :id => entries(:one).id
    assert_response :success
  end

  test "should post create" do
    assert_difference 'Entry.count', 1 do
      post :create, :entry => {:body => "new entry"}
    end
    assert_redirected_to entries_path
    assert_equal assigns(:entry).body, "new entry"
  end

  test "should update more" do
    original_body = entries(:one).body
    assert_no_difference 'Entry.count' do
      put :update, :id => entries(:one).id, :entry => {:more => "more"}
    end
    assert_redirected_to entry_path(entries(:one))
    assert_equal assigns(:entry).body, [original_body, "more"].join("\n")
  end

end
