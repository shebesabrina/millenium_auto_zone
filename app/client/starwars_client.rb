class StarwarsClient
  def initialize
    @connection = Faraday.new(url: 'https://swapi.co')
  end

  def get_vehicles
    response = @connection.get('/api/vehicles/')
    response.body
  end
end
