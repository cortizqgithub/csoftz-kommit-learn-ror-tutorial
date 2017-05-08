class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # By including this helper here, it is available in any controller 
  include SessionsHelper
end
