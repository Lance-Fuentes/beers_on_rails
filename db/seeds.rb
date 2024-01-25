Beer.delete_all
Company.delete_all

7.times do
  company = Company.create(name: Faker::Company.unique.name)

  number_of_beer = rand(4..8)

  number_of_beer.times do
    company.beers.create(
      name:         Faker::Beer.unique.name,
      price:        Faker::Commerce.price,
      description:    "This #{Faker::Beer.style} style beer has #{Faker::Beer.alcohol} alcohol and
      was brewed with #{Faker::Beer.malts}, #{Faker::Beer.yeast} yeast and a twist of # #{Faker::Beer.hop} hops."
    )
  end
end

puts "Created #{Company.count} Companies"
puts "Created #{Beer.count} Beers"
