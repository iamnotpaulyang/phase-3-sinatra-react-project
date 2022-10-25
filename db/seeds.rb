puts "🌱 Seeding data..."

#create demons...
d1 = Demon.create(name: "Megaera", classification: "furies")
d2 = Demon.create(name: "Alecto", classification: "furies")
d3 = Demon.create(name: "Tisiphone", classification: "furies")


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
