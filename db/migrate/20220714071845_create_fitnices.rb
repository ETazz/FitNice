class CreateFitnices < ActiveRecord::Migration[6.1]
  def change
    create_table :fitnices do |t|
      t.text :body
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
