Given /^a genre named Comedy$/ do
  @comedy = Genre.create!(name: "Comedy")
end

When /^I create a movie Caddyshack in the Comedy genre$/ do
  visit movies_path
  click_link "Add Movie"
  fill_in "Title", with: "Caddyshack"
  select "1980", from: "Release year"
  check "Comedy"
  # click_button "Save"  # SQLite3::ConstraintException: constraint failed: INSERT INTO "genres_movies" ("movie_id", "genre_id") VALUES (1, 1) (ActiveRecord::StatementInvalid)
end

Then /^Caddyshack should be in the Comedy genre$/ do
  pending # express the regexp above with the code you wish you had
end
