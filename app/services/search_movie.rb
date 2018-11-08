class SearchMovie

  def initialize(research)
    Dotenv.load
    @research = research
    Tmdb::Api.key(ENV["API_KEY"])
  end

  def perform
    search = Tmdb::Search.new
    search.resource('movie')
    search.query(@research)

    return search.fetch

  end
end
