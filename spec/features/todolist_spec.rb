require "capybara/rspec"
feature "homepage" do

  scenario "I should be able to see a list of to do items" do
    visit('/')
    click_link 'To do list'
    expect(page).to have_content 'Items in the todo list'
  end

  scenario "I should be able to add a todo item" do
    visit('/')
    click_link 'Add a todo list item'
    expect(page).to have_content 'Add a todo item'
  end

  scenario "I should be able to see a list of items by category" do
    visit('/')
    click_link 'View to do list by category'
    expect(page).to have_content 'Items in the todo list for category'
  end

  scenario "I should be able to choose a category to see the list in" do
    visit('/')
    click_link 'View to do list by category'
    click_button 'submit'
    expect(page).to have_content 'Items in the todo list for category: Finance'
  end

  scenario "I should be able to add an optional deadline to my todo item" do
    visit('/')
    click_link 'Add a todo list item'
    fill_in :name, with: 'Test name'
    fill_in :category, with: 'Finance'
    fill_in :deadline, with: 'Monday'
    click_button 'submit'
    visit('/todolist')
    expect(page).to have_content 'Test name Finance Monday'
  end

  scenario "I should be able to delete an item" do
    visit('/')
    click_link 'Add a todo list item'
    fill_in :name, with: 'Test'
    fill_in :category, with: 'Test'
    fill_in :deadline, with: 'Test'
    click_button 'submit'
    visit('/remove-item')
    fill_in :name, with: 'Test'
    expect(page).not_to have_content 'Test Test Test'
  end

  scenario "I should be able to complete an item" do
    visit('/')
    click_link 'Add a todo list item'
    fill_in :name, with: 'Test1'
    fill_in :category, with: 'Test1'
    fill_in :deadline, with: 'Test1'
    click_button 'submit'
    visit('/remove-item')
    fill_in :name, with: 'Test1'
    expect(page).not_to have_content 'Test1 Test1 Test1 true'
  end

end
