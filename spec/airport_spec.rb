require 'airport'

describe Airport do
  it "has a default capacity" do
    luton = Airport.new
    expect(luton.capacity).to eq 10
  end
end