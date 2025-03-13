
class TodoList < ApplicationRecord
	validates :name, presence: true
	validates :priority, inclusion: { in: 1..5 }
	# validates :status, inclusion: { in: ['pending', 'in-progress', 'completed'] }

	scope :sorted_by_priority, -> { order(priority: :desc, due_date: :asc) }
end
