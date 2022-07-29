class CreateTargetmusclecategories < ActiveRecord::Migration[6.1]
  def change
    create_table :targetmusclecategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
