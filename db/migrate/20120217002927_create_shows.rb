class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.integer :cinema_id
      t.integer :film_id
      t.datetime :hour

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
