# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# admin = User.create({
#   email: "admin@example.com",
#   password: "password",
#   password_confirmation: "password",
#   confirmed_at: Time.now
#   admin: true
# })

category1 = Category.create({
    name: "Ruby"
    })


category2 = Category.create({
    name: "Angular"
    })


category3 = Category.create({
    name: "Node"
    })


category4 = Category.create({
    name: "Backbone"
    })



videos1 = Video.create ({
    title: "JavaScript Road Trip Part 1 Completion Badge",
    description: "An introduction to the very basics of the JavaScript language.",
    category_id: category1.id,
    youtube_url: "https://www.youtube.com/watch?v=_cLvpJY2deo",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/channel/UCwRXb5dUK4cvsHbx-rGzSgw"
})
videos2 = Video.create ({
    title: "Try jQuery",
    description: "An introduction jQuery language.",
    category_id: category2.id,
    youtube_url: "https://www.youtube.com/watch?v=nyKB6ZuqMn0&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/watch?v=Rub-JsjMhWY&list=UUwRXb5dUK4cvsHbx-rGzSgw"

})

videos3 = Video.create ({
    title: "Try HTML",
    description: "An introduction HTML.",
    category_id: category3.id,
    youtube_url: "https://www.youtube.com/watch?v=nyKB6ZuqMn0&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/watch?v=Rub-JsjMhWY&list=UUwRXb5dUK4cvsHbx-rGzSgw"

})

videos4 = Video.create ({
    title: "Try Java",
    description: "An introduction Java.",
    category_id: category4.id,
    youtube_url: "https://www.youtube.com/watch?v=nyKB6ZuqMn0&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/watch?v=Rub-JsjMhWY&list=UUwRXb5dUK4cvsHbx-rGzSgw"

})




