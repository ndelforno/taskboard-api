# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tasks = Task.create(
  [
    {
      title: "signin/signup page",
      body: "User can sign up and log in into the app"
    },
    {
      title: "search bar",
      body: "User can search through the app"
    },
    {
      title: "shopping cart",
      body: "User can buy product"
    },
    {
      title: "Pictures upload",
      body: "User can upload pictures"
    }
  ])
