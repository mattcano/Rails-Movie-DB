require 'open-uri'

class Movie

  attr_accessor :title, :id, :year, :rating, :genres, :directors, :actors, :plot, :poster, :imdb_rating, :tomato_rating, :tomato_consensus

  def initialize(id)
    @id = id
    file = open("http://www.omdbapi.com/?i=#{URI.escape(@id)}&tomatoes=true")
    @result = JSON.load(file.read)
    @title = @result["Title"]
    @year = @result["Year"]
    @rating = @result["Rated"]
    @genres = @result["Genre"].split(", ")
    @directors = @result["Director"].split(", ")
    @actors = @result["Actors"].split(", ")
    @plot = @result["Plot"]
    @poster = @result["Poster"]
    @imdb_rating = @result["imdbRating"]
    @tomato_rating = @result["tomatoRating"]
    @tomato_consensus = @result["tomatoConsensus"]
  end


end
