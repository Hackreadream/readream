class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery
 def rowsPerPage
    @rowsPerPage ||= 9
 end
 
#   before_filter :authenticate_user!

end
