class TodoList < ApplicationRecord
	validates :name, presence: true
	validates :priority, inclusion: { in: 1..5 }
	scope :sorted_by_priority, -> { order(priority: :desc, due_date: :asc) }
end
