feature 'delete a bookmark' do
  scenario 'user deletes a bookmark' do
    Bookmark.create(url: 'https://www.google.com', title: "Test Bookmark")
    visit('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'https://www.google.com')
    first('.bookmark').click_button 'Delete'
    expect(page).to_not have_link('Test Bookmark', href: 'https://www.google.com')
  end
end
