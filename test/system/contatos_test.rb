require "application_system_test_case"

class ContatosTest < ApplicationSystemTestCase
  setup do
    @contato = contatos(:one)
  end

  test "visiting the index" do
    visit contatos_url
    assert_selector "h1", text: "Contatos"
  end

  test "should create contato" do
    visit contatos_url
    click_on "New contato"

    fill_in "Endereco", with: @contato.endereco
    fill_in "Nome", with: @contato.nome
    fill_in "Telefone", with: @contato.telefone
    click_on "Create Contato"

    assert_text "Contato was successfully created"
    click_on "Back"
  end

  test "should update Contato" do
    visit contato_url(@contato)
    click_on "Edit this contato", match: :first

    fill_in "Endereco", with: @contato.endereco
    fill_in "Nome", with: @contato.nome
    fill_in "Telefone", with: @contato.telefone
    click_on "Update Contato"

    assert_text "Contato was successfully updated"
    click_on "Back"
  end

  test "should destroy Contato" do
    visit contato_url(@contato)
    click_on "Destroy this contato", match: :first

    assert_text "Contato was successfully destroyed"
  end
end
