# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = [
    {
        name: "Sean",
        password: "Fabbed1973",
        description: "Not an actual instructor, just the website administrator.",
        cell_phone: "224-856-7926",
        email: "murphcoder@gmail.com",
        admin: true
    },
    {
        name: "Patric",
        password: "Konjo1949",
        description: "Owner and lead instructor."
        cell_phone: "847-639-7001",
        email: "murphsenseo@yahoo.com",
        admin: true
    }
]

Instructor.create(teachers)
