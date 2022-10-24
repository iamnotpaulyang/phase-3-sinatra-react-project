puts "🌱 Seeding data..."

#create demons...
d1 = Demon.create(name: "Megaera", number_of_souls: 20)
d2 = Demon.create(name: "Alecto", number_of_souls: 16)
d3 = Demon.create(name: "Tisiphone", number_of_souls: 14)

# create 50 souls...
50.times do
    soul = Soul.create(
        name: Faker::Name.unique.name,
        location: "Tartarus",
        years_dead: rand(0..10000),
        sentence: rand(10000..100000000),
        demon_id: rand(d1.id..d3.id)
    )
end

puts "✅ Done seeding!"
