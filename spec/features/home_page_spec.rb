feature 'Visit the homepage' do
  scenario 'User is welcomed on homepage' do
    visit '/'
    expect(page).to have_content 'Welcome to chitter'
  end
end
