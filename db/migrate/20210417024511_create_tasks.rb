class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :content
      t.string :title
      t.integer :status

      t.timestamps
    end
  end
end
