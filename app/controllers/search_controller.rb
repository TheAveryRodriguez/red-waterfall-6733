class SearchController < ApplicationController
  def index
    @characters = SearchFacade.search(params[:affiliation])
  end
end
