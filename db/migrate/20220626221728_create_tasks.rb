class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :description
      t.datetime :due_date
      t.boolean :done
      t.integer :priority
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
