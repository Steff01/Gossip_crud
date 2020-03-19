class GossipsController < ApplicationController
    def new
        @gossip = Gossip.new
        @user_number = User.all.count
    end

    def create
        permitted = permmit
        Gossip.create(permitted)
        redirect_to(new_gossip_path)
    end

    def index
        @gossips = Gossip.all
    end

    def show
        @gossip = Gossip.find(params[:id])
    end
    
    def edit
        @gossip = Gossip.find(params[:id])
        @user_number = User.all.count
    end

    def update
        @gossip = Gossip.find(params[:id])
        permitted = permmit
        @gossip.update(permitted)
        redirect_to(gossip_path(params[:id]))
    end
    
    def destroy
        @gossip = Gossip.find(params[:id])
        @gossip.delete
        redirect_to(gossips_path)
    end
    
    
    
    private
    def permmit 
        params.require(:gossip).permit(:title, :content, :user_id)
    end
    
end
