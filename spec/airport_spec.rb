require 'airport'

describe Airport do
  let(:luton) {Airport.new }

  it "has a default capacity" do
    luton = Airport.new
    expect(luton.capacity).to eq 10
  end

  it "can have a custom capacity" do
    luton = Airport.new(capacity: 20)
    expect(luton.capacity).to eq 20
  end

  it "has an empty hanger when created" do
    expect(luton).to be_empty
  end

  it "knows how many slots it has" do
    expect(luton.slots).to eq 10
  end
end