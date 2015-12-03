require "spec_helper"

feature "user add question", js: true do

  scenario "successfully add question" do
    visit "/questions"
    fill_in "Title", with: "Who is the greatest QB of all time?"

    expect_no_page_reload do
      click_button "Add"
      expect(page).to have_content "Who is the greatest QB of all time?"
    end
  end

  scenario "submit form without title" do
    visit "/questions"

    expect_no_page_reload do
      click_button "Add"
      expect(page).to_not have_css("li")
    end
  end
end
