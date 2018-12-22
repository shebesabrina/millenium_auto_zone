require 'rails_helper'

describe "Spacecraft API" do
  it 'displays a list of ships' do

    get '/api/v1/spacecrafts/'

    expect(response).to be_successful
    ships = JSON.parse(response.body)
    expect(ships["count"]).to eq(39)
  end

  it "displays one ship" do
    ship_1 = JSON.parse(File.read(Rails.root.join("spec", "fixtures", "vehicle_4.json")))

    get '/api/v1/spacecrafts/4/'

    expect(response).to be_successful
    response = JSON.parse(response.body)
    expect(ship_1).to eq(response)
    expect(response.count).to eq(1)
  end

end
