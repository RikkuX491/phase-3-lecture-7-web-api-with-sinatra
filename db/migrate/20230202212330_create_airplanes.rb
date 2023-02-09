class CreateAirplanes < ActiveRecord::Migration[6.1]
  def change
    create_table :airplanes do |t|
      t.string :airline
      t.integer :number_of_seats
      t.string :image
    end
  end
end
