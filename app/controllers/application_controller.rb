class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # restrict access to all pages of site to authenticated users only
  before_action :authenticate_user!
end
