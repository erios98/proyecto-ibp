require "test_helper"

class FactibilidadFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factibilidad_form = factibilidad_forms(:one)
  end

  test "should get index" do
    get factibilidad_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_factibilidad_form_url
    assert_response :success
  end

  test "should create factibilidad_form" do
    assert_difference('FactibilidadForm.count') do
      post factibilidad_forms_url, params: { factibilidad_form: { archivo: @factibilidad_form.archivo, estado: @factibilidad_form.estado, titulo: @factibilidad_form.titulo } }
    end

    assert_redirected_to factibilidad_form_url(FactibilidadForm.last)
  end

  test "should show factibilidad_form" do
    get factibilidad_form_url(@factibilidad_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_factibilidad_form_url(@factibilidad_form)
    assert_response :success
  end

  test "should update factibilidad_form" do
    patch factibilidad_form_url(@factibilidad_form), params: { factibilidad_form: { archivo: @factibilidad_form.archivo, estado: @factibilidad_form.estado, titulo: @factibilidad_form.titulo } }
    assert_redirected_to factibilidad_form_url(@factibilidad_form)
  end

  test "should destroy factibilidad_form" do
    assert_difference('FactibilidadForm.count', -1) do
      delete factibilidad_form_url(@factibilidad_form)
    end

    assert_redirected_to factibilidad_forms_url
  end
end
