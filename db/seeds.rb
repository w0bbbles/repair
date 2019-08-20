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
    name: "tv",
    description: "cracked screen & lines on screen",
    repairing: false,
    completed: false,
    repairer: 3,
    image: "https://media.karousell.com/media/photos/products/2019/08/11/tv_1565495782_f9efa008_progressive.jpg"
    },
    {
    name: "camera",
    description: "Shutter not working",
    repairing: false,
    completed: false,
    repairer: 3,
    image: "https://media.karousell.com/media/photos/products/2019/08/17/camera_1566046635_87d114ec_progressive.jpg"
    },
    {
    name: "hairdryer",
    description: "Burning hot after 1-min",
    repairing: false,
    completed: false,
    repairer: 2,
    image: "https://media.karousell.com/media/photos/products/2019/08/19/philips_ionic_hairdryer_1566202657_85a61ce3_progressive.jpg"
    }
  ]
)