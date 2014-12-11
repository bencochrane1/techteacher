# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin1 = User.create({
  email: "jhooker@phonicshero.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: true
})

admin2 = User.create({
  email: "bencochrane1@me.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: true
})

phil = User.create({
  email: "phil@gmail.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: false
})

peter = User.create({
  email: "peter@gmail.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: false
})

roger = User.create({
  email: "roger@gmail.com",
  password: "password",
  password_confirmation: "password",
  confirmed_at: Time.now,
  admin: false
})

category1 = Category.create ({
    name: "JavaScript"
})

category2 = Category.create ({
    name: "jQuery"
})

category3 = Category.create ({
    name: "HTML"
})

category4 = Category.create ({
    name: "Java"
})

videos1 = Video.create ({
    title: "JavaScript Road Trip Part 1 Completion Badge",
    description: "An introduction to the very basics of the JavaScript language.",
    category_ids: [1],
    youtube_url: "https://www.youtube.com/watch?v=_cLvpJY2deo",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/channel/UCwRXb5dUK4cvsHbx-rGzSgw",
    user_id: 3
})
videos2 = Video.create ({
    title: "Try jQuery",
    description: "An introduction jQuery language.",
    category_ids: [2],
    youtube_url: "https://www.youtube.com/watch?v=nyKB6ZuqMn0&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/watch?v=Rub-JsjMhWY&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    user_id: 3

})

videos3 = Video.create ({
    title: "Try HTML",
    description: "An introduction HTML.",
    category_ids: [3],
    youtube_url: "https://www.youtube.com/watch?v=nyKB6ZuqMn0&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/watch?v=Rub-JsjMhWY&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    user_id: 4

})

videos4 = Video.create ({
    title: "Try Java",
    description: "An introduction Java.",
    category_ids: [4],
    youtube_url: "https://www.youtube.com/watch?v=nyKB6ZuqMn0&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    author: "Derek Banas",
    author_url: "https://www.youtube.com/watch?v=Rub-JsjMhWY&list=UUwRXb5dUK4cvsHbx-rGzSgw",
    user_id: 5

})




