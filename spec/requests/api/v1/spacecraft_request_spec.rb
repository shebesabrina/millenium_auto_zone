require 'rails_helper'

describe "Spacecraft API" do
  it 'displays a list of ships' do
    ship_1 = JSON.parse(File.read(Rails.root.join("spec", "fixtures", "vehicle_4.json")))

    get '/api/v1/spacecrafts'

    expect(response).to be_successful
    ship = JSON.parse(response.body)
    expect(ship.count).to eq(1)
  end
end
