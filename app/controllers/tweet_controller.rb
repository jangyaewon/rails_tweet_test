class TweetController < ApplicationController
    def index
    @tweets = Board.all
  end
  
  def show
    @tweet = Board.find(params[:id])
  end
  
  def new
  end
  
  def create
      board = Board.new
      board.content = params[:content]
      board.ip_address =request.ip
      board.save
      
      redirect_to "/tweet"
  end
  
  def edit 
    board = Board.find(params[:id])
  end
  
  def update
    board = Board.find(params[:id])
    board.content = params[:content]
    board.save
    redirect_to "/tweet"
  end
  
  def destroy
      board = Board.find(params[:id])
      board.destroy
      redirect_to "/tweet"
  end
  
end
