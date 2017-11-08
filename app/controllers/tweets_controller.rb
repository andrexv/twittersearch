class  TweetsController < ApplicationController
  def search
    if tweets_params[:search].present?
      @results = $twitter_client.search(tweets_params[:search])
    end
  end


  private

  def tweets_params
      params.permit(:search)
  end

end
