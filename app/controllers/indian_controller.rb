class IndianController < ApplicationController
  before_action :set_list, only: [:game ,:list_join]
  @@id =0
  #GET list
  #GET list.json
  def lists
    @lists = List.all
  end
  
  def list
    @lists = List.all.where(state: "ready")
  end
  
  #GET list/new
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
    @@id=@list.id
  end
  
  #PATCH/PUT  /list/1
  def createjoin
    @list_id = @@id
    @list= List.find(@list_id)
    @list.update(list_params)
    @list.state = "start"
    @list.save
    redirect_to game_path(@list)
  end
  
  def game
    if @list.state == "start"
      @state = "게임준비완료"
    else 
      @state = "플레이어 2 대기중"
    end
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
  
  def set_list
    @list= List.find(params[:id])
    
  end
  
  def list_params
    params.require(:list).permit(:player1,:player2,:state)
  end
end
