require 'rails_helper'

RSpec.feature 'Sign out', type: :system do
  scenario 'User signs out uccessfully' do
    user = create(:user, :confirmed)

    sign_in(user)

    expect(page).to have_content('Welcome')
    expect(page).to have_content('Sign out')

    click_link 'Sign out'

    expect(page).to have_content('Log in')
  end
end
