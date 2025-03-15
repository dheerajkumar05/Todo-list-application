require 'faker'

# Clear existing records
TodoList.delete_all
10.times do
  TodoList.create!(
    name: Faker::Lorem.sentence(word_count: 3), 
    description: Faker::Lorem.paragraph(sentence_count: 2),  
    priority: rand(1..5),  
    due_date: Faker::Date.forward(days: rand(1..30)), 
    status: %w[pending in_progress completed].sample 
  )
end

puts "✅ Seeded 10 To-Do items successfully!"
