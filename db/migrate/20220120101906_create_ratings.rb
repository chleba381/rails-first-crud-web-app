class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :value

      t.timestamps
    end
    add_reference :ratings, :movie, foreign_key: true
  end
end
