require "faker"

10.times do
  beer = Beer.new(
    name: "#{Faker::App.name} beer",
    votes: (0..5).to_a.sample
  )
  beer.save
end
