require 'open-uri'

class Search

  def initialize(query)
    @query = query
  end

  def search
    file = open("http://www.omdbapi.com/?s=#{URI.escape(@query)}")
    JSON.load(file.read)["Search"] || []
  end

end