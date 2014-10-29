class WelcomeController < ApplicationController

  skip_before_action :authorize # SMB added 102814
  def index
  end
end
