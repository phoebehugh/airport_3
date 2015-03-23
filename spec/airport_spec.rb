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

  context "landing" do

    context "on good weather" do
    end

  end

    it "can have a custom capacity" do
      luton = Airport.new(capacity: 20)
      expect(luton.capacity).to eq 20
    end

    it "can land a plane" do
      plane = double :plane, :land! => true # creates a double with one method (land!) than returns true when called
      expect(plane).to receive(:land!) # tell me if this thing happens, then next code tests it out
      luton.park(plane) # when we work with doubles, we ask it to tell us if the test works or not
    end
    # what is a listener

  it "has 1 plane after parking one" do
    a_plane = double :a_plane, :land! => true
    expect(a_plane).to receive(:land!)
    luton.park(a_plane) # it doesn't matter what you put into it, because it just counts the array. We are passing a symbol to the double method. You can't call methods on symbols.
    # luton is a variable that points to an instance of the class Airport
    # first we test if a_plane variable can have the method land! called upon it. after this, we run the argument to land "a_plane" and if this works then it will be added to the hangar (see airport.rb method)
    expect(luton.planes_count).to eq 1
  end

  it "has 9 slots" do
  end

end

# symbols can't respond to methods