class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :set_session
  before_action :authenticate_user!

def set_session
  session[:unique_id] ||= SecureRandom.hex(8)
end

  allow_browser versions: :modern
end
