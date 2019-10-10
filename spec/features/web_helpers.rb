def visit_and_add_new
  visit('/')
  click_button 'new'
  fill_in('url', with: 'http://www.testbookmark.com')
  fill_in('title', with: 'Test Bookmark')
  click_button 'Add Bookmark'
end
