require "rails_helper"
feature "Packages management" do
  scenario "OWNER creates a new Package" do
    visit "/packages/new"
    fill_in "Hours Total", :with => "10"
    fill_in "First Videographer", :with => "yes"
    fill_in "First Videographer (hours)", :with => "10"
    fill_in "Second Videographer", :with => "yes"
    fill_in "Second Videographer (hours)", :with => "8"
    fill_in "Highlight Video", :with => "10"
    fill_in "Documentary edit", :with => "120"
    fill_in "Published DVD’s", :with => "5"
    fill_in "Published BD’s", :with => "2"
    fill_in "Over 8 hours % discount", :with => "10"
    fill_in "Over 10 hours % discount", :with => "15"
    click_button "Create"
    expect(page).to have_content("Package was successfully created.")
  end
end
