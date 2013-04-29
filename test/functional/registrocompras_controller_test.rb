require 'test_helper'

class RegistrocomprasControllerTest < ActionController::TestCase
  setup do
    @registrocompra = registrocompras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registrocompras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registrocompra" do
    assert_difference('Registrocompra.count') do
      post :create, registrocompra: { descripcion_producto: @registrocompra.descripcion_producto, valor_total: @registrocompra.valor_total, valor_unidad: @registrocompra.valor_unidad }
    end

    assert_redirected_to registrocompra_path(assigns(:registrocompra))
  end

  test "should show registrocompra" do
    get :show, id: @registrocompra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registrocompra
    assert_response :success
  end

  test "should update registrocompra" do
    put :update, id: @registrocompra, registrocompra: { descripcion_producto: @registrocompra.descripcion_producto, valor_total: @registrocompra.valor_total, valor_unidad: @registrocompra.valor_unidad }
    assert_redirected_to registrocompra_path(assigns(:registrocompra))
  end

  test "should destroy registrocompra" do
    assert_difference('Registrocompra.count', -1) do
      delete :destroy, id: @registrocompra
    end

    assert_redirected_to registrocompras_path
  end
end
