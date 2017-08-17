require_relative '../../app.rb'

  feature 'Testing infrastructure' do

    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end

    scenario "Can enter names and see them on the screen" do
      sign_in_and_play
      expect(page).to have_content 'Nick'
      expect(page).to have_content 'Will'
    end

    scenario "User can see opposition's HP" do
      sign_in_and_play
      expect(page).to have_content ' / HP: 100'
    end

  end
