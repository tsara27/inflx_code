require 'rails_helper'

RSpec.feature 'User Registration', type: :system do
  scenario 'User creates an account successfully' do
    visit new_user_registration_path

    fill_in 'user[first_name]', with: 'Foo'
    fill_in 'user[last_name]', with: 'Bar'
    fill_in 'user[email]', with: 'a@example.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    fill_in 'user[client_attributes][name]', with: 'ABC'
    click_button 'SIGN UP'

    expect(page).to have_content('A message with a confirmation link has been' \
                                 ' sent to your email address. Please follow ' \
                                 'the link to activate your account.')

    expect(current_path).to eq(new_user_session_path)
    expect(User.last.first_name).to eq('Foo')
    expect(User.last.last_name).to eq('Bar')
    expect(User.last.email).to eq('a@example.com')
    expect(User.last.client.name).to eq('ABC')
    expect(User.last.client.status).to eq('green')
  end

  scenario 'User failed to creates account' do
    visit new_user_registration_path

    click_button 'SIGN UP'

    expect(page).to have_content('Sign up')
  end
end
