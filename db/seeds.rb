# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url_array = [
"https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15168803_10211834148357572_50662368744558970_o.jpg?oh=473b7ebb812d1089420baf6698833a54&oe=59430C56",
"https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15156833_10211834148997588_7571918130063744167_o.jpg?oh=9618c9b518528bf8897cd76eb3174775&oe=592B6918",
'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15111062_10211834149517601_2444673446019210328_o.jpg?oh=6400d28ee8471869f64b72cfe4fe95fc&oe=59730F5A', 
'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/15000212_10211834150357622_8940180790286153756_o.jpg?oh=76db5f86a6c3ab3f1b32e50654ee1274&oe=592FCD3D'

]

url_array.length.times {|index| Project.create!(title: "Title Of Work", description: Faker::ChuckNorris.fact, url: url_array[index]) }
