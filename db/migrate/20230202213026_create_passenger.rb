class CreatePassenger < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phone_number
    end
  end
end
