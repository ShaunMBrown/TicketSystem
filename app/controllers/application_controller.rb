class ApplicationController < ActionController::Base
  
  before_action :authorize  # SMB added 102814
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   # SMB added 102814:
    protected
    def authorize
      unless User.find_by(id: session[:user_id])
      	redirect_to ct_CTLanding_url, notice: "Please log in"
      end
    end
    # /SMB 102814
end
