class MovieController < ApplicationController


  @appname = "Movie App"
  @pagename = @appname

  def home

  end

  def search
    @query = params[:query]
    @results = Search.new(@query).search
  end

  def movies
    @id = params[:id]
    @movie = Movie.new(@id)
  end

end
