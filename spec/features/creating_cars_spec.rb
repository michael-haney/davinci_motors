require 'rails_helper'

feature 'Creating cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
  end
  scenario 'verify that the list of cars and price show on homepage' do
    car = FactoryGirl.create(:car)
    car2 = FactoryGirl.create(:car)
      visit '/'

    expect(page).to have_content(car.make)
    expect(page).to have_content(car.model)
    expect(page).to have_content(car.year)
    expect(page).to have_content(car.price)

    expect(page).to have_content(car2.make)
    expect(page).to have_content(car2.model)
    expect(page).to have_content(car2.year)
    expect(page).to have_content(car2.price)

  end
  scenario 'adding a second car' do
  end
  scenario ''
end
