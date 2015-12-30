class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    debugger
    cookies['XSRF-TOKEN'] = session[:_csrf_token] if protect_against_forgery?
  end
  protected
  def verified_request?
    debugger
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end
end
