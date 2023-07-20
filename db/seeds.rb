
user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_dogs = [

{
    name:'Rocky',
    description:'we can fill it later rocky',
    age:7,
    vaccination_status:true,
    image: 'some url goes here'
},
{
    name:'Victoria',
    description:'we can fill it later victoria',
    age:4,
    vaccination_status:false,
    image: 'some url goes here'
},
{
    name:'Julio',
    description:'we can fill it later Julio',
    age:9,
    vaccination_status:true,
    image: 'some url goes here'
}

]
user2_dogs = [

{
    name:'Rail',
    description:'we can fill it later rocky',
    age:7,
    vaccination_status:true,
    image: 'some url goes here'
},
{
    name:'Vikcy',
    description:'we can fill it later victoria',
    age:4,
    vaccination_status:false,
    image: 'some url goes here'
},
{
    name:'Juan',
    description:'we can fill it later Julio',
    age:9,
    vaccination_status:true,
    image: 'some url goes here'
}

]

user1_dogs.each do |dog|
    user1.dogs.create(dog)
    p "created: #{dog}"
  end
  
  user2_dogs.each do |dog|
    user2.dogs.create(dog)
    p "created: #{dog}"
  end





