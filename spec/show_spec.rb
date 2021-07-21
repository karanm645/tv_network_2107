require 'rspec'
require './lib/character'
require './lib/show'

describe Show do
  knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
  kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

  context 'Attributes' do
    it "exists" do
      expect(knight_rider).to be_a(Show)
    end

    it "has a name" do
      expect(knight_rider.name).to eq("Knight Rider")
    end

    it "has a creator" do
      expect(knight_rider.creator).to eq("Glen Larson")
    end

    it "has characters" do
      expect(knight_rider.characters).to eq([michael_knight, kitt])
    end

  context "Character" do
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})

    it "has a total salary" do
      expect(knight_rider.total_salary).to eq(2600000)
    end

    it "has the highest paid actor" do
      expect(knight_rider.highest_paid_actor).to eq("David Hasselhoff")
    end

    it "has actors" do
      expect(knight_rider.actors).to eq(["David Hasselhoff", "William Daniels"])
    end
  end
end
end
