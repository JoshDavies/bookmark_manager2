feature 'delete a bookmark' do
  scenario 'user deletes a bookmark' do
    visit_and_add_new
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    click_button 'delete'
    expect(page).to_not have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
