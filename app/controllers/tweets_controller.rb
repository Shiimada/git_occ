class TweetsController < ApplicationController
  
#   before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

# before_action :set_tweet, only: [ :show, :edit, :update, :destroy]
 
 def index
   @tweets = Tweet.all
 end
 
 def destroy
 tweet = Tweet.find(params[:id])
 tweet.destroy
 redirect_to action: 'index'
 end
 
 def show
 end
 
 def new
   @tweet = Tweet.new
  end
  
  def create
     @tweet = Tweet.new(tweet_params)
  end
 
 
 def edit
  
 end
 
 def update
  respond_to do |format|
   if @tweet.update(tweet_params)
    format.html {redirect_to @tweet, notice: 'Completed!!!!' }
    format.json {render :show, status: :ok, location: @tweet }
   else
    format.html {render :edit }
    format.json {render json: @book.errors, status: :unprocessable_entity }
   end
  end
 end

 
  private
 def tweet_params
    params.permit(:name, :text)
 end
 
 def set_tweet
  @tweet = Tweet.find(params[:id])
 end


end
