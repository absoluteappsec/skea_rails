class HomeController < ApplicationController
  before_action :authenticate_user!

  # Homepage
  def index
  end

end
