require "application_system_test_case"

class ZayavksTest < ApplicationSystemTestCase
  setup do
    @zayavk = zayavks(:one)
  end

  test "visiting the index" do
    visit zayavks_url
    assert_selector "h1", text: "Zayavks"
  end

  test "creating a Zayavk" do
    visit zayavks_url
    click_on "New Zayavk"

    fill_in "Dolzh", with: @zayavk.dolzh
    fill_in "Fio", with: @zayavk.fio
    fill_in "Infosyst", with: @zayavk.infosyst
    fill_in "Podr", with: @zayavk.podr
    fill_in "Servers", with: @zayavk.servers
    fill_in "Soglos", with: @zayavk.soglos
    fill_in "Telephone", with: @zayavk.telephone
    click_on "Create Zayavk"

    assert_text "Zayavk was successfully created"
    click_on "Back"
  end

  test "updating a Zayavk" do
    visit zayavks_url
    click_on "Edit", match: :first

    fill_in "Dolzh", with: @zayavk.dolzh
    fill_in "Fio", with: @zayavk.fio
    fill_in "Infosyst", with: @zayavk.infosyst
    fill_in "Podr", with: @zayavk.podr
    fill_in "Servers", with: @zayavk.servers
    fill_in "Soglos", with: @zayavk.soglos
    fill_in "Telephone", with: @zayavk.telephone
    click_on "Update Zayavk"

    assert_text "Zayavk was successfully updated"
    click_on "Back"
  end

  test "destroying a Zayavk" do
    visit zayavks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zayavk was successfully destroyed"
  end
end
