def register
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email,  with: 'douglas@example.com'
  fill_in :password, with: 'dougywuggy'
  click_button 'Register'
end
 
