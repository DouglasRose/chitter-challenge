feature 'User sign up' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, douglas@example.com')
    expect(User.first.email).to eq('douglas@example.com')
  end
end
