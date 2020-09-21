class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image.tweet_text).merge(user_id: current_user.id)
  end
end
