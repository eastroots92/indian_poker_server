class IndianController < ApplicationController
  before_action :join_game, only: [:list_join]
  before_action :in_game, only: [:game]
  
  #GET list
  #GET list.json
  def list
    @lists = List.all.where(state: "ready")
  end

  def list_new
    @list = List.new
    puts @list
  end

  #POST list
  def createlist
    list = List.new(list_params)
    list.state = "ready"
    list.save
    redirect_to :list
  end
  
  def list_join
  end
  
  def game
  end
  
  private
  
  #게임 플레이어 2 들어갈 경우 
  def join_game
    @list= List.find(params[:id])

    #@p1_card = P1_card.new
    #@p2_card = P2_card.new
    #@p1_card.no = params[:id]
    #@p2_card.no = params[:id]
    

  end
  
  def in_game
    @list= List.find(params[:id])
  end
  
  def list_params
    params.require(:list).permit(:player1,:player2,:state)
  end
end
