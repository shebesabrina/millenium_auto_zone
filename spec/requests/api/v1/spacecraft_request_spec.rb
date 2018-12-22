require 'rails_helper'

describe "Spacecraft API" do
  it 'displays a list of ships' do

    get '/api/v1/spacecrafts/'

    expect(response).to be_successful
    ship = JSON.parse(response.body)
    expect(ship["count"]).to eq(39)
  end

end
