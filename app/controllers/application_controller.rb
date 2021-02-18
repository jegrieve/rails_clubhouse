class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
  end

  #so this will run before any of the controllers
  #if the controller is devise it will permit an
  #extra value, so now username will be put
  #into the database

  #next thing to do is to make username permit
  #sign in instead of email