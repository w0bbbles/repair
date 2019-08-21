# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = Item.create(
  [
    {
    name: "fan",
    description: "Loud clanking sounds when on",
    repairing: false,
    completed: false,
    repairer: 1,
    image: "https://res.cloudinary.com/leileilei/image/upload/v1566293975/fan.jpg"
    },
    {
    name: "tv",
    description: "cracked screen & lines on screen",
    repairing: false,
    completed: true,
    repairer: 2,
    image: "https://res.cloudinary.com/leileilei/image/upload/v1566293975/tv.jpg"
    },
    {
    name: "camera",
    description: "Shutter not working",
    repairing: true,
    completed: false,
    repairer: 3,
    image: "https://res.cloudinary.com/leileilei/image/upload/v1566293975/camera.jpg"
    },
    {
    name: "hairdryer",
    description: "Burning hot after 1-min",
    repairing: false,
    completed: false,
    repairer: 1,
    image: "https://res.cloudinary.com/leileilei/image/upload/v1566293975/hairdryer.jpg"
    },
    {
    name: "laptop",
    description: "Laptop won't start-up",
    repairing: false,
    completed: false,
    repairer: 1,
    image: "https://res.cloudinary.com/leileilei/image/upload/v1566293976/laptop.jpg"
    }
  ]
)

users = User.create(
  [
    {
    email: "keith@email.com",
    password: "123456"
    },
    {
    email: "wenlei@email.com",
    password: "123456"
    },
    {
    email: "weide@email.com",
    password: "123456"
    },
    {
    email: "ty@email.com",
    password: "123456"
    }
  ]
)