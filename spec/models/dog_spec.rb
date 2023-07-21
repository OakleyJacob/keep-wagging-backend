require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "should validate name" do
     user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog = Dog.create(
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
      )
      expect(dog.errors[:name]).to_not be_empty
  end
  
  it "should validate age" do
    user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
    dog = Dog.create(
        name:'Rocky',
        description:'we can fill it later rocky',
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
    )    
    expect(dog.errors[:age]).to_not be_empty
  end
  
  it "should validate description" do
    user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
    dog = Dog.create(
        name:'Rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
    )   
    expect(dog.errors[:description]).to_not be_empty
  end
  
  it "should validate image" do
    user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
    dog = Dog.create(
        name:'Rocky',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        user_id: user1.id
    )    
    expect(dog.errors[:image]).to_not be_empty
  end
  
  it "should validate vaccination status" do
    user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
    dog = Dog.create(
        name:'Rocky',
        description:'we can fill it later rocky',
        age:7,
        image: 'some url goes here',
        user_id: user1.id
    )    
    expect(dog.errors[:vaccination_status]).to_not be_empty
  end

end


