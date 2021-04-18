class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :title
      t.text :objective , default: 'N/A'
      t.string :vocabulary , default: 'N/A'
      t.text :standard , default: 'N/A'
      t.text :description
      t.integer :teacher_id
      t.timestamps
    end
  end
end
