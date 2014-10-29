class CtController < ApplicationController
  skip_before_action :authorize # SMB added 102814

  def CTLanding
  end

  def CTMain
  end
end
