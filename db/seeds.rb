require 'faker'

# Clear existing records
TodoList.delete_all
10.times do
  TodoList.create!(
    name: Faker::Lorem.sentence(word_count: 3),  # Generate a random name
    description: Faker::Lorem.paragraph(sentence_count: 2),  # Generate a random description
    priority: rand(1..5),  # Random priority between 1 and 5
    due_date: Faker::Date.forward(days: rand(1..30)),  # Random future date
    status: %w[pending in_progress completed].sample  # Random status
  )
end

puts "✅ Seeded 10 To-Do items successfully!"
