require "rails_helper"

feature "reviewing" do
  before do
    Restaurant.create name: "KFC"
  end

  scenario "allows users to enter a restaurant review" do
    visit "/restaurants"
    click_link "Review KFC"
    fill_in "Thoughts", with: "So so"
    select "3", from: "Rating"
    click_button "Leave review"

    expect(current_path).to eq "/restaurants"
    expect(page).to have_content "So so"
  end
end
