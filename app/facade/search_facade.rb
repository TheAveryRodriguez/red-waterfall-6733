class SearchFacade
  def self.search(affiliation)
    response = SearchService.character(affiliation)[:data]
    Character.new(response)
  end
end
