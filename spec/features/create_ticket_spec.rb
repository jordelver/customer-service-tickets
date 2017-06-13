require "rails_helper"

feature "Customer creates a new ticket" do

  before do
    Rails.application.load_seed # load orders
  end

  scenario "with valid options" do
    visit "/tickets/new"

    select("DEF456 - the thirty - low - jet black - size 10", from: "ticket[order_id]")
    select("My order is wrong", from: "ticket[problem]")
    select("Please send me a different item", from: "ticket[preferred_solution]")
    click_button "Create Ticket"

    expect(page).to have_content("Thanks")
  end
end
