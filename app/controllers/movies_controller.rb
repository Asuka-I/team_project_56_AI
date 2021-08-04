class MoviesController < ApplicationController
  def index
    if params[:genre] == 5
      @movies = Movie.where(gerne: Movie::PHP_GENRE_LIST)
    else
      @movies = Movie.where(genre: Movie::RAILS_GENRE_LIST)
    end
  end
end
