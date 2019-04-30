class GossipController < ApplicationController

  def gossip
  #@gossip = Gossip.find(params[:id])
  end

  def new
  	@new = Gossip.new
  end

  def create

  	@gossip = Gossip.create(title: params[:title] , content: params[:content] , user_id: 2)
  	puts params
  		if @gossip.save
  			redirect_to '/home'
  		else 
  			render "new"
  		end

  end

  def gossip_params
  gossip_params.require(:gossip).permit(:content)
end

end
