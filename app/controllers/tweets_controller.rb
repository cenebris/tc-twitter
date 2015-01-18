class TweetsController < ApplicationController
  
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  

  def index
    @tweets = Tweet.paginate(:page => params[:page], :per_page => 30)
    # @tweets = Tweet.all.sort.reverse
    respond_with(@tweets)   
  end

  def show
    respond_with(@tweet)
  end

  def new
    @tweet = Tweet.new
    respond_with(@tweet)
  end

  def edit
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    @tweet.save
    redirect_to root_path #After creation of Tweet go to Index action, not Show
  end

  def update
    @tweet.update(tweet_params)
    respond_with(@tweet)
  end

  def destroy
    @tweet.destroy
    respond_with(@tweet)
  end

  private
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    def tweet_params
      params.require(:tweet).permit(:body, :username)
    end
end
