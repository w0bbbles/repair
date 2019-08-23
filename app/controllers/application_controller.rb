class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
   devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
   devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_in_path_for(user)
    puts "user.inspect"
    puts user.inspect;
    return items_path;
    # puts "user.name"
    # puts user.name
    # return the path based on resource
  end

  # def after_sign_out_path_for(resource)
  #   # return the path based on resource
  # end
end