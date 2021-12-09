require "application_system_test_case"

class FactibilidadFormsTest < ApplicationSystemTestCase
  setup do
    @factibilidad_form = factibilidad_forms(:one)
  end

  test "visiting the index" do
    visit factibilidad_forms_url
    assert_selector "h1", text: "Factibilidad Forms"
  end

  test "creating a Factibilidad form" do
    visit factibilidad_forms_url
    click_on "New Factibilidad Form"

    fill_in "Archivo", with: @factibilidad_form.archivo
    fill_in "Estado", with: @factibilidad_form.estado
    fill_in "Titulo", with: @factibilidad_form.titulo
    click_on "Create Factibilidad form"

    assert_text "Factibilidad form was successfully created"
    click_on "Back"
  end

  test "updating a Factibilidad form" do
    visit factibilidad_forms_url
    click_on "Edit", match: :first

    fill_in "Archivo", with: @factibilidad_form.archivo
    fill_in "Estado", with: @factibilidad_form.estado
    fill_in "Titulo", with: @factibilidad_form.titulo
    click_on "Update Factibilidad form"

    assert_text "Factibilidad form was successfully updated"
    click_on "Back"
  end

  test "destroying a Factibilidad form" do
    visit factibilidad_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factibilidad form was successfully destroyed"
  end
end
