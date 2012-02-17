class CreateScreenings < ActiveRecord::Migration
  def self.up
    create_table :screenings do |t|
      t.integer :cinema_id
      t.integer :film_id

      t.timestamps
    end
  end

  def self.down
    drop_table :screenings
  end
end
