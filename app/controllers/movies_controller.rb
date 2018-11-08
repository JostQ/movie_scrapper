class MoviesController < ApplicationController
  def index
    if request.post?
      redirect_to "/#{params[:search]}"
    end
  end

  def search
    if request.get?
      @movies = SearchMovie.new(params["search"]).perform
    else
      redirect_to root_url
    end
  end
end
