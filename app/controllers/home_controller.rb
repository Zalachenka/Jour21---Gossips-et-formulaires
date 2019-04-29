class HomeController < ApplicationController
  def home
  end

  def display_name
  @username = User.find(params[:id])
  end

  def display_title
  end

end
