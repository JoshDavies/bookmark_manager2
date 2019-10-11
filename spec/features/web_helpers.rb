def visit_and_add_new
  visit('/bookmarks/new')
  fill_in('url', with: 'https://www.google.com')
  fill_in('title', with: 'Test Bookmark')
  click_button 'Add Bookmark'
end
