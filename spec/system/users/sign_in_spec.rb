require 'rails_helper'

RSpec.feature 'Sign in', type: :system do
  scenario 'User signs in uccessfully' do
    user = create(:user, :confirmed)

    visit new_user_session_path

    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: 'password'
    click_button 'Log in'

    expect(page).to have_content('Welcome')
    expect(page).to have_content('Sign out')

    expect(current_path).to eq(root_path)
  end
end
