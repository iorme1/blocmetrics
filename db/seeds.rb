20.times do
  User.create!(
    email: Faker::Internet.email,
    password: 123123,
    confirmed_at: Time.now
  )
end

users = User.all

50.times do
  Application.create!(
    name: Faker::Lorem.sentence,
    user: users.sample,
    url: Faker::Internet.url
  )
end

applications = Application.all

300.times do
  Event.create!(
    name: Faker::Lorem.sentence,
    application: applications.sample
  )
end


puts "Seeds finished"
puts "#{User.count} users created"
puts "#{Application.count} applications created"
puts "#{Event.count} events created"
