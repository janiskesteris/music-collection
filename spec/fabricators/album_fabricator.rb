Fabricator(:album) do
  name { Faker::Lorem.words(rand(3)+1).join(" ") }
  artist { Faker::Name.name }
  label { Faker::Company.name }
  released_on { (-20..20).to_a.sample.days.ago }
  genre
  user
  description { Faker::Lorem.paragraph }
  cover_image "dafault.png"
end
