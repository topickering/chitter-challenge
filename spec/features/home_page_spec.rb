feature 'Visit the homepage' do

  scenario 'User is welcomed on homepage' do
    visit '/'
    expect(page).to have_content 'Welcome to chitter'
  end

  scenario 'User is invited to see all peeps' do
    visit '/'
    expect(page).to have_selector("input[type=submit][value='See peeps']")
  end

  scenario 'User is invited to sign in' do
    visit '/'
    expect(page).to have_selector("input[type=submit][value='Sign in']")
  end

end
