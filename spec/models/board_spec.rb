require 'rails_helper'

RSpec.describe Board, type: :model do

  subject {
    described_class.new(
      name: "Mike",
      email: "test@gmail.com",
      width: rand(1..10),
      height: rand(1..10),
      mines: rand(1..10))
  }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a width" do
      subject.width = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a height" do
      subject.height = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a mines" do
      subject.mines = nil
      expect(subject).to_not be_valid
    end
end
