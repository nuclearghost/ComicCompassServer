require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { address2: @shop.address2, address: @shop.address, city: @shop.city, company: @shop.company, latitude: @shop.latitude, longitude: @shop.longitude, mailscore: @shop.mailscore, scf: @shop.scf, sic1: @shop.sic1, sic1code: @shop.sic1code, sic2: @shop.sic2, sic2code: @shop.sic2code, sic3: @shop.sic3, sic3code: @shop.sic3code, sic4: @shop.sic4, sic4code: @shop.sic4code, state: @shop.state, zip4: @shop.zip4, zip: @shop.zip }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    patch :update, id: @shop, shop: { address2: @shop.address2, address: @shop.address, city: @shop.city, company: @shop.company, latitude: @shop.latitude, longitude: @shop.longitude, mailscore: @shop.mailscore, scf: @shop.scf, sic1: @shop.sic1, sic1code: @shop.sic1code, sic2: @shop.sic2, sic2code: @shop.sic2code, sic3: @shop.sic3, sic3code: @shop.sic3code, sic4: @shop.sic4, sic4code: @shop.sic4code, state: @shop.state, zip4: @shop.zip4, zip: @shop.zip }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
