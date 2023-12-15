class SearchService
  def self.search(affiliation)
    get_url("/api/v1/characters?affiliation=#{affiliation}")
  end

  def self.conn
    conn = Faraday.new("http://last-airbender-api.fly.dev")
  end

  private

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
