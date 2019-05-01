class GossipController < ApplicationController

  def show
  @gossip = Gossip.find(params[:id])
  end

  def new
  	@gossip = Gossip.new
  end

  def create

  	@gossip = Gossip.create(title: params[:title] , content: params[:content] , user_id: 2)
  	puts params
 
  		if @gossip.valid?
  			redirect_to '/home'
  		else
  		 render "new"
  			puts "Gossip is invalid"

  		end

  end

  def gossip_params
  gossip_params.require(:gossip).permit(:content)
end

end
