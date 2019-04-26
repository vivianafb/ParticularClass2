# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Post.delete_all
Role.delete_all
AdminUser.delete_all

r1 = Role.create!({name: "Teacher", description: "Can post notices"})
r2 = Role.create!({name: "Student", description: "Can see details of the publication and talk with the teacher "})

u1 = User.create!({name: "Sally", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create!({name: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create!({name: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u4 = User.create!({name: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})

u5 = User.create!({name: "Viviana", email: "viviana@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u6 = User.create!({name: "Soledad", email: "soledad@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u7 = User.create!({name: "Kevin", email: "kevin@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u8 = User.create!({name: "Jaime", email: "jaime@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})

u9 = User.create!({name: "Sam", email: "sam@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u10 = User.create!({name: "Sandra", email: "sanda@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u11 = User.create!({name: "Kelly", email: "kelly@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u12 = User.create!({name: "Joaquin", email: "joaquin@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})



i1 = Post.create!({subject: 'Ingles', city: 'Santiago', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u1.id})
i2 = Post.create!({subject: 'Matemática', city: 'Santiago', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u2.id})
i3 = Post.create!({subject: 'Lenguaje', city: 'Rancagua', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u3.id})
i4 = Post.create!({subject: 'Historia', city: 'Viña del mar', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u4.id})

i5 = Post.create!({subject: 'Ingles', city: 'Santiago', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u5.id})
i6 = Post.create!({subject: 'Matemática', city: 'Santiago', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u6.id})
i7 = Post.create!({subject: 'Lenguaje', city: 'Rancagua', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u7.id})
i8 = Post.create!({subject: 'Historia', city: 'Viña del mar', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u8.id})

i9 = Post.create!({subject: 'Ingles', city: 'Santiago', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u9.id})
i10 = Post.create!({subject: 'Matemática', city: 'Santiago', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u10.id})
i11= Post.create!({subject: 'Lenguaje', city: 'Rancagua', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', user_id: u11.id})
i12 = Post.create!({subject: 'Historia', city: 'Viña del mar', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',  user_id: u12.id})

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

10.times do |i|
    User.create(email:"usuario#{i}@gmail.com", password:'123456')
end




