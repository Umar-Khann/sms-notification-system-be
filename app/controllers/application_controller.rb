class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password phone_number])
      devise_parameter_sanitizer.permit(:account_update, keys: %i[name avatar])
    end
end
