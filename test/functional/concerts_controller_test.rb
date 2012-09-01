require 'test_helper'

class ConcertsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Concert.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Concert.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Concert.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to concert_url(assigns(:concert))
  end

  def test_edit
    get :edit, :id => Concert.first
    assert_template 'edit'
  end

  def test_update_invalid
    Concert.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Concert.first
    assert_template 'edit'
  end

  def test_update_valid
    Concert.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Concert.first
    assert_redirected_to concert_url(assigns(:concert))
  end

  def test_destroy
    concert = Concert.first
    delete :destroy, :id => concert
    assert_redirected_to concerts_url
    assert !Concert.exists?(concert.id)
  end
end
