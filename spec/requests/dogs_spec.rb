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

  describe "POST /create" do
    it "validates a name" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog_params = {
        dog: {
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
       }
      }
  
       post '/dogs', params: dog_params
       expect(response).to have_http_status(422)
    end
  end
  describe "POST /create" do
    it "validates a description" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog_params = {
        dog: {
        name: 'Rocky',
        age:7,
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
       }
      }
  
       post '/dogs', params: dog_params
       expect(response).to have_http_status(422)
    end
  end

  describe "POST /create" do
    it "validates a age" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog_params = {
        dog: {
        name: 'Rocky',
        description:'we can fill it later rocky',
        vaccination_status:true,
        image: 'some url goes here',
        user_id: user1.id
       }
      }
  
       post '/dogs', params: dog_params
       expect(response).to have_http_status(422)
    end
  end

  describe "POST /create" do
    it "validates vaccination status" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog_params = {
        dog: {
        name: 'Rocky',
        description:'we can fill it later rocky',
        age:7,
        image: 'some url goes here',
        user_id: user1.id
       }
      }
  
       post '/dogs', params: dog_params
       expect(response).to have_http_status(422)
    end
  end

  describe "POST /create" do
    it "validates image" do
      user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
      dog_params = {
        dog: {
        name: 'Rocky',
        description:'we can fill it later rocky',
        age:7,
        vaccination_status:true,
        user_id: user1.id
       }
      }
  
       post '/dogs', params: dog_params
       expect(response).to have_http_status(422)
    end
  end

  describe "PATCH /update validations" do
    it "validates name" do
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
        name: '',
        description:'we can fill it later rocky',
        age:9,
        vaccination_status:true,
        image: 'some url goes here'
       }
      }
  
       patch "/dogs/#{Dog.first.id}", params: dog_params
       jacob = Dog.first
       p jacob
       expect(jacob.name).to eq 'Rocky'
       expect(response).to have_http_status(422)
    end
  end

  describe "PATCH /update" do
    it "validates description" do
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
        description:'',
        name:'cutter',
        age:7,
        vaccination_status:true,
        image: 'some url goes here'
       }
      }
  
       patch "/dogs/#{Dog.first.id}", params: dog_params
       expect(response).to have_http_status(422)
       dog = Dog.first
       expect(dog.description).to eq 'we can fill it later rocky'
    end
  end

  describe "PATCH /update" do
    it "validates age" do
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
        age:'' ,
        description:'we can fill it later rocky',
        vaccination_status:true,
        image: 'some url goes here'
       }
      }
  
       patch "/dogs/#{Dog.first.id}", params: dog_params
       expect(response).to have_http_status(422)
       dog_to = Dog.first
       expect(dog_to.age).to eq 7
    end
  end

  describe "PATCH /update" do
    it "validates vaccination status" do
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
        vaccination_status:'',
        image: 'some url goes here'
       }
      }
  
       patch "/dogs/#{Dog.first.id}", params: dog_params
       expect(response).to have_http_status(422)
       dog = Dog.first
       expect(dog.vaccination_status).to eq true
    end
  end

  describe "PATCH /update" do
    it "validates image" do
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
        vaccination_status:'',
        image:''
       }
      }
  
       patch "/dogs/#{Dog.first.id}", params: dog_params
       expect(response).to have_http_status(422)
       dog = Dog.first
       expect(dog.image).to eq 'some url goes here'
    end
  end
end