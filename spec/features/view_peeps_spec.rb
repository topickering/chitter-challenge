feature 'View the peeps' do

  scenario 'User sees the peeps' do
    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps (text) VALUES('this is a test') RETURNING id, text;")
    connection.exec("INSERT INTO peeps (text) VALUES('this is also a test') RETURNING id, text;")

    visit '/peeps_list'
    expect(page).to have_content 'this is a test'
    expect(page).to have_content 'this is also a test'
  end

end
