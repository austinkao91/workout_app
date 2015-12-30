class User::SessionsController < Devise::SessionsController
  respond_to :json, :html

  after_filter :set_csrf_cookie_for_ng, only: [:create, :destroy]


  def create
    sign_out(:user) if current_user
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location
    after_sign_in_path_for(resource)
  end

  protected
  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?

  end
end
