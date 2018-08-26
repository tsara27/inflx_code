class ClientController < ActionController::Base
  layout 'client'

  before_action :authenticate_user!
end
