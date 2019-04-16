# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


r1 = Role.create({name: "Teacher", description: "Can post notices"})
r2 = Role.create({name: "Student", description: "Can see details of the publication and talk with the teacher "})

u1 = User.create({name: "Sally", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({name: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create({name: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u4 = User.create({name: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})

i1 = Post.create({subject: 'Ingles', city: 'Santiago'})
i2 = Post.create({subject: 'Matemática', city: 'Santiago'})
i3 = Post.create({subject: 'Lenguaje', city: 'Rancagua'})
i4 = Post.create({subject: 'Historia', city: 'Viña del mar'})

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?