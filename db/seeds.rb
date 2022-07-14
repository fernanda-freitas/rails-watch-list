puts 'Start creating Seed'
25.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://source.unsplash.com/random',
    rating: rand(0..10)
  )
end
puts 'Seed finished'
