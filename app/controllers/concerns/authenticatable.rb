module Authenticatable
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_user!
		before_action :configure_permitted_parameters, if: :devise_controller?
  end

  private

  def configure_permitted_parameters
  	added_attrs = %i[username email password password_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
  end
end