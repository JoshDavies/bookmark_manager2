feature 'update a bookmark' do
  scenario 'user updates an existing bookmark' do
    Bookmark.create(url: 'https://www.google.com', title: "Test Bookmark")
    visit('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'https://www.google.com')

    first('.bookmark').click_button 'update'
    #expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"

    fill_in('url', with: 'https://www.amazon.com')
    fill_in('title', with: 'amazon')
    click_button 'submit'

    expect(page).to have_link('amazon', href: 'https://www.amazon.com')
    expect(page).not_to have_link('Test Bookmark', href: 'https://www.google.com')
  end
end
