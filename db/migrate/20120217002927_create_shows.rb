class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.integer :screening_id
      t.datetime :hour

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
