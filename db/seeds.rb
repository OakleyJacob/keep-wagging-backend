
user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_dogs = [

{
    name:'Rocky',
    description:'This doggy likes to bite on ice to freshen up!',
    age:3,
    vaccination_status:true,
    image: 'https://cdn.greenfieldpuppies.com/wp-content/uploads/2020/07/white-bull-terrier-puppy-standing-in-grass-scaled.jpg'
},
{
    name:'Victoria',
    description:'Loves to cuddle in the winter!',
    age:4,
    vaccination_status:false,
    image: 'https://img.freepik.com/free-photo/cute-shepherd-dog-posing-isolated-white-background_155003-46179.jpg?w=2000'
},
{
    name:'Julio',
    description:'Loves getting his belly rubbed!',
    age:6,
    vaccination_status:true,
    image: 'https://www.hepper.com/wp-content/uploads/2021/11/rsz_shutterstock_1126830554.jpg'
},
{
    name:'Juan',
    description:'Will devour your sandal, no remorse!',
    age:2,
    vaccination_status:true,
    image: 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2021/03/09135854/Rottweiler-puppy-fetching-a-toy-in-the-grass.jpeg'
},
{
    name:'James',
    description:'Loves to eat leftovers, be careful!',
    age:4,
    vaccination_status:true,
    image: 'https://betterpet.com/wp-content/uploads/2022/07/doberman.jpg'
},
{
    name:'Teether',
    description:'If there is mud around, will swim in it without a doubt!',
    age:6,
    vaccination_status:true,
    image: 'https://cdn.create.vista.com/api/media/small/245332148/stock-photo-golden-retriever-dog-lying-rubber'
}

]
user2_dogs = [

{
    name:'Rail',
    description:'Chases the cats, but will never hurt any of them :)!',
    age:3,
    vaccination_status:true,
    image: 'https://optimeal.com/cdn/shop/articles/Shih_Tzu.jpg?v=1652891448'
},
{
    name:'Dogde',
    description:'Careful with this one, will run towards the street the first chance it gets!',
    age:5,
    vaccination_status:false,
    image: 'https://www.petfinder.com/sites/default/files/images/content/poodle-detail-scaled.jpg'
},
{
    name:'Bee',
    description:'Always in the kitchen begging for hamburgers!',
    age:2,
    vaccination_status:true,
    image: 'https://topdogresource.com/wp-content/uploads/2021/12/Orange-Pomeranian-Standing-At-Park-scaled.jpg'
},
{
    name:'Corn Dog',
    description:'Barks for no reason, but will keep your situation awareness on point!',
    age:2,
    vaccination_status:true,
    image: 'https://people.com/thmb/5uLym456xzuJ5MwbPIdTJiyGoSE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(904x0:906x2)/pug-1-0d4c0f988e3d421ca4954917b1450664.jpg'
},
{
    name:'Giza',
    description:'Does not hesistate to bite your leg, better be wearing some pants!',
    age:5,
    vaccination_status:true,
    image: 'https://www.veterinarians.org/wp-content/uploads/2022/12/Bullmastiff-Dog.jpg'
},
{
    name:'Hakuna',
    description:'Will jam to any positive jams!',
    age:3,
    vaccination_status:true,
    image: 'https://media.npr.org/assets/img/2021/04/27/prancer_wide-db59609b5bd96c9e56e4dfe32d198461197880c2-s1400-c100.jpg'
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

Donation.create(amount: 150.25)


