feature 'update a bookmark' do
  scenario 'user updates an existing bookmark' do
    visit_and_add_new
    click_button 'update'
    fill_in('url', with: 'http://www.updatedbookmark.com')
    fill_in('title', with: 'Updated Bookmark')
    click_button 'submit'
    expect(page).to have_link('Updated Bookmark', href: 'http://www.updatedbookmark.com')
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
