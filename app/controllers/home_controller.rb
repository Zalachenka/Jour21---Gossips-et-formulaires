class HomeController < ApplicationController
  def home

  @gossip = Gossip.all
  end

  def display_title
  end

end
