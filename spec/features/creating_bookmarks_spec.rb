feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit_and_add_new
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
