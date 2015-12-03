require "spec_helper"

feature "user views questions" do
  scenario "sees questions" do
    db_connection do |conn|
      sql_query = "INSERT INTO questions (title) VALUES ($1)"
      data = ["Who is the greatest QB of all time?"]
      conn.exec_params(sql_query, data)
    end

    visit "/questions"
    expect(page).to have_content("Who is the greatest QB of all time?")
  end
end
