# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts  "destroying puppies"
User.destroy_all
Puppy.destroy_all



puts "creating bundles of cuteness"

user_one = User.create!(first_name: "prince", last_name: "harry", email: "harry@me.com", password: "moolah123")
user_one.remote_photo_url = "https://images.unsplash.com/photo-1526911799633-84b785eb1f6a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=88e323d3907733ad69d0b3babddfb2a3&auto=format&fit=crop&w=1950&q=80"
user_one.save

puppy_one = Puppy.create!(name: "Vincent", breed: "poodle", price: 25000, age: 12, location: "london", owner: User.first)
puppy_one.remote_photo_url = "https://images.unsplash.com/photo-1529117332242-b597eb0848db?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=171c18d7141397dbe3abfe11958d0160&auto=format&fit=crop&w=1349&q=80"
puppy_one.save!
puppy_two = Puppy.create!(name: "James", breed: "poodle", price: 25000, age: 12, location: "london", owner: User.first)
puppy_two.remote_photo_url = "https://images.unsplash.com/photo-1527526029430-319f10814151?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=530237c605b3a5d67de0cf2cd3c73939&auto=format&fit=crop&w=1350&q=80"
puppy_two.save!
puppy_three = Puppy.create!(name: "Jack", breed: "poodle", price: 25000, age: 12, location: "london", owner: User.first)
puppy_three.remote_photo_url = "https://images.unsplash.com/photo-1526660690293-bcd32dc3b123?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a3e92fe0143d23aafd5ccdf61c5e7c8c&auto=format&fit=crop&w=1350&q=80"
puppy_three.save!
puppy_four = Puppy.create!(name: "George", breed: "poodle", price: 25000, age: 12, location: "london", owner: User.first)
puppy_four.remote_photo_url = "https://images.unsplash.com/photo-1522008693277-086ad6075b78?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=29734216f7769eaac7bc49a0e219f9ed&auto=format&fit=crop&w=668&q=80"
puppy_four.save!
puppy_five = Puppy.create!(name: "Dave", breed: "poodle", price: 25000, age: 12, location: "paris", owner: User.first)
puppy_five.remote_photo_url = "https://images.unsplash.com/photo-1521128591876-b4ace034003a?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0ea601d93fe1d982c1cb6cf3b055765e&auto=format&fit=crop&w=1350&q=80"
puppy_five.save!
puppy_six = Puppy.create!(name: "Brad", breed: "poodle", price: 25000, age: 12, location: "paris", owner: User.first)
puppy_six.remote_photo_url = "https://images.unsplash.com/photo-1520741412100-24cd6c2832e5?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f4348fc639aed74754c68db44972844f&auto=format&fit=crop&w=1350&q=80"
puppy_six.save!
puppy_seven = Puppy.create!(name: "Eli", breed: "german shepherd", price: 25000, age: 12, location: "paris", owner: User.first)
puppy_seven.remote_photo_url = "https://images.unsplash.com/photo-1520087619250-584c0cbd35e8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=46133220eb9fb8b0d0f308e6c2d501ca&auto=format&fit=crop&w=770&q=80"
puppy_seven.save!
puppy_eight = Puppy.create!(name: "Marvin", breed: "german shepherd", price: 25000, age: 12, location: "paris", owner: User.first)
puppy_eight.remote_photo_url = "https://images.unsplash.com/photo-1518877435974-99111725c470?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=96639aaab46135b27eaa475eca05d645&auto=format&fit=crop&w=1350&q=80"
puppy_eight.save!
puppy_nine = Puppy.create!(name: "Francesca", breed: "german shepherd", price: 25000, age: 12, location: "paris", owner: User.first)
puppy_nine.remote_photo_url = "https://images.unsplash.com/photo-1529117332242-b597eb0848db?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=171c18d7141397dbe3abfe11958d0160&auto=format&fit=crop&w=1349&q=80"
puppy_nine.save!
puppy_ten = Puppy.create!(name: "Maria", breed: "german shepherd", price: 25000, age: 12, location: "paris", owner: User.last)
puppy_ten.remote_photo_url = "https://images.unsplash.com/photo-1518815068914-038920b6f0c6?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=38f02f628dfcc539764a05b5bc42a419&auto=format&fit=crop&w=1312&q=80"
puppy_ten.save!
puppy_eleven = Puppy.create!(name: "Molly", breed: "german shepherd", price: 25000, age: 12, location: "berlin", owner: User.last)
puppy_eleven.remote_photo_url = "https://images.unsplash.com/photo-1517854883321-ab2a463cce90?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a1dd083b0d2b005b9dcb0ece1beae82d&auto=format&fit=crop&w=800&q=80"
puppy_eleven.save!
puppy_twelve = Puppy.create!(name: "Jolie", breed: "labrador", price: 25000, age: 12, location: "berlin", owner: User.last)
puppy_twelve.remote_photo_url = "https://images.unsplash.com/photo-1516211815472-0a323be016e7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=1319eb1be747fa01efa5ed496dcc9dff&auto=format&fit=crop&w=1350&q=80"
puppy_twelve.save!
puppy_thirteen = Puppy.create!(name: "Barker", breed: "labrador", price: 25000, age: 12, location: "berlin", owner: User.last)
puppy_thirteen.remote_photo_url = "https://images.unsplash.com/photo-1514328525431-eac296c01d82?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=25f4959efe16b7fe671967d52a54609b&auto=format&fit=crop&w=1297&q=80"
puppy_thirteen.save!
puppy_fourteen = Puppy.create!(name: "Winne", breed: "labrador", price: 25000, age: 12, location: "berlin", owner: User.last)
puppy_fourteen.remote_photo_url = "https://images.unsplash.com/photo-1513738781020-f0109e72554f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fc01cf9a021520910574e59d8d689767&auto=format&fit=crop&w=668&q=80"
puppy_fourteen.save!
puppy_fifteen = Puppy.create!(name: "Lara", breed: "labrador", price: 25000, age: 12, location: "berlin", owner: User.last)
puppy_fifteen.remote_photo_url = "https://images.unsplash.com/photo-1511772155458-82055f485026?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4f3a812ddd34b79c0f6d3198d1e5ff40&auto=format&fit=crop&w=1350&q=80"
puppy_fifteen.save!
puppy_sixteen = Puppy.create!(name: "Georgia", breed: "labrador", price: 25000, age: 12, location: "berlin", owner: User.last)
puppy_sixteen.remote_photo_url = "https://images.unsplash.com/photo-1509559320938-387dfd4e966b?ixlib=rb-0.3.5&s=429b5da119b9dd1a650703af88f6b0f0&auto=format&fit=crop&w=1350&q=80"
puppy_sixteen.save!
puppy_seventeen = Puppy.create!(name: "Philipa", breed: "labrador", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_seventeen.remote_photo_url = "https://images.unsplash.com/photo-1506499377715-687ed75d24cd?ixlib=rb-0.3.5&s=168200c3f34c5f824b9ca51acd2a881b&auto=format&fit=crop&w=668&q=80"
puppy_seventeen.save!
puppy_eighteen = Puppy.create!(name: "Boris", breed: "terrier", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_eighteen.remote_photo_url = "https://images.unsplash.com/photo-1505044024939-c154d39ca595?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjF9&s=461a5ee963a7f22ab798ea4a4d199244&auto=format&fit=crop&w=668&q=80"
puppy_eighteen.save!
puppy_nineteen = Puppy.create!(name: "Olga", breed: "terrier", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_nineteen.remote_photo_url = "https://images.unsplash.com/photo-1503595855261-9418f48a991a?ixlib=rb-0.3.5&s=64476764b83a64c648ad9cf048fe4262&auto=format&fit=crop&w=668&q=80"
puppy_nineteen.save!
puppy_twenty = Puppy.create!(name: "Vicky", breed: "terrier", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_twenty.remote_photo_url = "https://images.unsplash.com/photo-1496982411516-bfb7eb1c74e1?ixlib=rb-0.3.5&s=8281d93bd9a00f2d9fbf716002a147a4&auto=format&fit=crop&w=1350&q=80"
puppy_twenty.save!
puppy_twentyone = Puppy.create!(name: "Sergio", breed: "terrier", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_twentyone.remote_photo_url = "https://images.unsplash.com/photo-1481285689591-43b93cc44811?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=be3f882d5781deb8022557e1ff5ebd70&auto=format&fit=crop&w=1522&q=80"
puppy_twentyone.save!
puppy_twentytwo = Puppy.create!(name: "Doris", breed: "terrier", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_twentytwo.remote_photo_url = "https://images.unsplash.com/photo-1477884143921-51d0a574ee09?ixlib=rb-0.3.5&s=8dad92dd2a9f3bf68529fe21870423f9&auto=format&fit=crop&w=1350&q=80"
puppy_twentytwo.save!
puppy_twentythree = Puppy.create!(name: "Deli", breed: "terrier", price: 25000, age: 12, location: "rio", owner: User.last)
puppy_twentythree.remote_photo_url = "https://images.unsplash.com/photo-1472698938026-79bed881e5b7?ixlib=rb-0.3.5&s=b02df100708911379eba4f140687d08a&auto=format&fit=crop&w=1350&q=80"
puppy_twentythree.save!




# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# Puppy.remote_photo_url = url
# Puppy.save
