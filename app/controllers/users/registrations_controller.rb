module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]

    protected

    # If you have extra params to permit, append them to the sanitizer.
    def configure_sign_up_params
      devise_parameter_sanitizer.permit :sign_up,
                                        keys: [
                                          :first_name,
                                          :last_name,
                                          client_attributes: [:name]
                                        ]
    end

    def after_inactive_sign_up_path_for(_resource)
      new_user_session_path
    end
  end
end
