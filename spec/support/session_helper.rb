module SessionHelper
  def sign_in(user)
    visit new_user_session_path
    find('#user_email').set user.email
    find('#user_password').set user.password
    click_button 'Log in'
  end
end

RSpec.configure do |config|
  config.include SessionHelper, type: :system
end
