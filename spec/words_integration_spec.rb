require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe("a list of words", {:type => :feature})do
  it('will show a list of words that you want to add to the dictionary') do
    visit('/')
    click_on('Add a new word to your list here')
    fill_in('wordname', :with => "USA")
    click_button('Add Word')
    click_on('See all your words here!')
    expect(page).to have_content("USA")
  end
end

describe("a list of definitions", {:type => :feature})do
  it('will show a list of definitions that you want to add to the dictionary') do
    visit('/')
    click_on('Add a new word to your list here')
    fill_in('wordname', :with => "USAtoday")
    click_button('Add Word')
    click_on('See all your words here!')
    click_on("USAtoday")
    click_on('Add a new definition')
    fill_in('definition', :with => "country in north america")
    click_button('Add Definition')
    click_on('Go back to your words')
    click_on("USAtoday")
    expect(page).to have_content("country in north america")
  end

end
