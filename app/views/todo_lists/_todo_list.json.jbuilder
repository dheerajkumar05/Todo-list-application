json.extract! todo_list, :id, :name, :description, :priority, :due_date, :status, :created_at, :updated_at
json.url todo_list_url(todo_list, format: :json)
