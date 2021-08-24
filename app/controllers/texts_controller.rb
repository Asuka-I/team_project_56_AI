class TextsController < ApplicationController
  PER_PAGE = 12

  def index
    @texts = if params[:genre] == "php"
               Text.includes(:read_progresses).where(genre: Text::PHP_GENRE_LIST).page(params[:page]).per(PER_PAGE)
             else
               Text.includes(:read_progresses).where(genre: Text::RAILS_GENRE_LIST).page(params[:page]).per(PER_PAGE)
             end
  end

  def show
    @text = Text.find(params[:id])
  end
end
