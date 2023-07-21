require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "should validate name" do
    dog = Dog.create
    expect(dog.errors[:name]).to_not be_empty
  end
  it "should validate age" do
    dog = Dog.create
    expect(dog.errors[:age]).to_not be_empty
  end
  it "should validate description" do
    dog = Dog.create
    expect(dog.errors[:description]).to_not be_empty
  end
  it "should validate image" do
    dog = Dog.create
    expect(dog.errors[:image]).to_not be_empty
  end
  it "should validate vaccination status" do
    dog = Dog.create
    expect(dog.errors[:vaccination_status]).to_not be_empty
  end

end


