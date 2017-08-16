require_relative '../../app.rb'

  feature 'Testing infrastructure' do

    before(:each) do
      visit('/')
    end
    scenario 'Can run app and check page content' do
      expect(page).to have_content 'Testing infrastructure working!'
    end

    scenario "Can enter names and see them on the screen" do
      fill_in('player1', with: 'Nick')
      fill_in('player2', with: 'Will')
      click_button('Submit')
      expect(page).to have_content 'Nick'
      expect(page).to have_content 'Will'
    end

  end
