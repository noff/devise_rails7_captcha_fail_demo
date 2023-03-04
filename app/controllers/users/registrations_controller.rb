# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_sign_up_params, only: [:create]

  def create
    if params[:captcha].present?
      flash.discard :captcha
      super
    else
      self.resource = resource_class.new sign_up_params
      resource.validate
      set_minimum_password_length
      clean_up_passwords resource
      flash[:captcha] = "Click captcha"
      respond_with_navigational(resource) do
        render :new
      end
    end
  end

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_up_path_for(resource)
    dashboard_index_path
  end

end
