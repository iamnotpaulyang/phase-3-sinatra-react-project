puts "🌱 Seeding data..."

#create demons...
d1 = Demon.create(name: "Megaera", classification: "Furies", demon_img: "https://www.gamesatlas.com/images/jch-optimize/ng/images_hades_megaera.webp")
d2 = Demon.create(name: "Alecto", classification: "Furies", demon_img: "https://www.gamesatlas.com/images/jch-optimize/ng/images_hades_alecto.webp")
d3 = Demon.create(name: "Tisiphone", classification: "Furies", demon_img: "https://www.gamesatlas.com/images/jch-optimize/ng/images_hades_tisiphone.webp")

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
