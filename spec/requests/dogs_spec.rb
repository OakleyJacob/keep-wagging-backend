require 'rails_helper'

RSpec.describe "Dogs", type: :request do
  describe "GET /index" do
    it "gets a list of dogs" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog = {
        name:'Rocky',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here'
      }
      user1.dogs.create(dog)
      get '/dogs'

      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a dog" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog_params = {
        dog: {
        name:'Rocky',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
       }
      }
  
       post '/dogs', params: dog_params
       expect(response).to have_http_status(200)
       dog = Dog.first
       expect(dog.name).to eq 'Rocky'
    end
  end
  describe "PATCH /update" do
    it "updates a dog" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog = {
        name:'Rocky',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here'
      }
      user1.dogs.create(dog)
      dog_params = {
        dog: {
        name:'cutter',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here',
       }
      }
  
       patch "/dogs/#{Dog.first.id}", params: dog_params
       expect(response).to have_http_status(200)
       dog = Dog.first
       expect(dog.name).to eq 'cutter'
    end
  end
  describe "DELETE /destroy" do
    it "deletes a dog" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog = {
        name:'Rocky',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here'
      }
      user1.dogs.create(dog)
  
       delete "/dogs/#{Dog.first.id}"
       expect(response).to have_http_status(200)
       dog = Dog.all
       expect(dog.length).to eq 0
    end
  end
end