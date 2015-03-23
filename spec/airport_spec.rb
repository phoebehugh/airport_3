require 'airport'

describe Airport do
  it "has a default capacity" do
    luton = Airport.new
    expect(luton.capacity).to eq 10
  end

  it "can have a custom capacity" do
    luton = Airport.new(capacity: 20)
    expect(luton.capacity).to eq 20
  end
end