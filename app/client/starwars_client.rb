class StarwarsClient
  def initialize
    @connection = Faraday.new(url: 'https://swapi.co')
  end


  def get_vehicles
    use_the_force('/api/vehicles/')
  end

  def get_vehicle(ship)
    use_the_force("/api/vehicles/#{ship}/")
  end

  private
    def use_the_force(url)
      @connection.get(url).body
    end
end
