# User Story 4:
# As a Maker
# So that I can let people know what I am doing
# I want to post a message (peep) to chitter

feature "post peep" do
  scenario "to update people on my life, post peep to chitter stream" do
  visit '/'
  click_button('Add Peep!')
  fill_in 'body', with: 'This is what I did today'
  fill_in 'title', with: 'First Peep'
  click_button('Submit Peep')
  expect(current_path).to eq '/peeps'
  expect(page).to have_content ('First Peep')
  end
end


# Peep.create(body: 'This is what I did today', title: 'First Peep')
# visit '/stream'
# (expect(page).to have_content 'First Peep')
