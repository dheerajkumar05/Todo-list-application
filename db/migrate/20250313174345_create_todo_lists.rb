class CreateTodoLists < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_lists do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.date :due_date
      t.string :status

      t.timestamps
    end
  end
end
