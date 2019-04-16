class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def new_session_path(scope)
      new_user_session_path
    end
    
    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:lastname,:password,:password_confirmation,:role_id, :user_id])
    end


end
