class AddUserToFitnices < ActiveRecord::Migration[6.1]
  def change
    add_reference :fitnices, :user, null: false, foreign_key: true
  end
end
