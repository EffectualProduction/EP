require 'test_helper'

class DatoscontactosControllerTest < ActionController::TestCase
  setup do
    @datoscontacto = datoscontactos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datoscontactos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datoscontacto" do
    assert_difference('Datoscontacto.count') do
      post :create, datoscontacto: { apellido: @datoscontacto.apellido, direccion: @datoscontacto.direccion, email: @datoscontacto.email, movil: @datoscontacto.movil, nombre: @datoscontacto.nombre, telefono: @datoscontacto.telefono }
    end

    assert_redirected_to datoscontacto_path(assigns(:datoscontacto))
  end

  test "should show datoscontacto" do
    get :show, id: @datoscontacto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datoscontacto
    assert_response :success
  end

  test "should update datoscontacto" do
    put :update, id: @datoscontacto, datoscontacto: { apellido: @datoscontacto.apellido, direccion: @datoscontacto.direccion, email: @datoscontacto.email, movil: @datoscontacto.movil, nombre: @datoscontacto.nombre, telefono: @datoscontacto.telefono }
    assert_redirected_to datoscontacto_path(assigns(:datoscontacto))
  end

  test "should destroy datoscontacto" do
    assert_difference('Datoscontacto.count', -1) do
      delete :destroy, id: @datoscontacto
    end

    assert_redirected_to datoscontactos_path
  end
end
