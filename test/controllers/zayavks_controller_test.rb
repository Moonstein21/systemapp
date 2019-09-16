require 'test_helper'

class ZayavksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zayavk = zayavks(:one)
  end

  test "should get index" do
    get zayavks_url
    assert_response :success
  end

  test "should get new" do
    get new_zayavk_url
    assert_response :success
  end

  test "should create zayavk" do
    assert_difference('Zayavk.count') do
      post zayavks_url, params: { zayavk: { dolzh: @zayavk.dolzh, fio: @zayavk.fio, infosyst: @zayavk.infosyst, podr: @zayavk.podr, servers: @zayavk.servers, soglos: @zayavk.soglos, telephone: @zayavk.telephone } }
    end

    assert_redirected_to zayavk_url(Zayavk.last)
  end

  test "should show zayavk" do
    get zayavk_url(@zayavk)
    assert_response :success
  end

  test "should get edit" do
    get edit_zayavk_url(@zayavk)
    assert_response :success
  end

  test "should update zayavk" do
    patch zayavk_url(@zayavk), params: { zayavk: { dolzh: @zayavk.dolzh, fio: @zayavk.fio, infosyst: @zayavk.infosyst, podr: @zayavk.podr, servers: @zayavk.servers, soglos: @zayavk.soglos, telephone: @zayavk.telephone } }
    assert_redirected_to zayavk_url(@zayavk)
  end

  test "should destroy zayavk" do
    assert_difference('Zayavk.count', -1) do
      delete zayavk_url(@zayavk)
    end

    assert_redirected_to zayavks_url
  end
end
