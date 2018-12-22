class ApplicationController < ActionController::API
  def client
    StarwarsClient.new
  end
end
