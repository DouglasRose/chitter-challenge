require 'orderly'
# User Story 5:
# As a maker
# So that I can see what others are saying
# I want to see all peeps in reverse chronological order

feature "see peeps in reverse chronological order" do
  scenario "reverse chronological order" do
    Peep.create(body: 'This is my Second Peep', title: 'Second Peep')
    visit '/peeps'
    expect("Second Peep").to appear_before("First Peep")
  end
end
