require 'airport'

describe Airport do
  let(:luton) {Airport.new }

  context "when created" do

    it "has a default capacity" do
      expect(luton.capacity).to eq 10
    end

    it "has an empty hanger" do
    expect(luton.planes_count).to eq 0
    end

    it "knows it has 10 slots available" do
    expect(luton.slots).to eq 10
    end

  end

    it "can have a custom capacity" do
      luton = Airport.new(capacity: 20)
      expect(luton.capacity).to eq 20
    end

  it "has one plane after parking one" do
    luton.park(:a_plane)
    expect(luton.planes_count).to eq 1
  end

end