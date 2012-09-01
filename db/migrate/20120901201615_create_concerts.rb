class CreateConcerts < ActiveRecord::Migration
  def self.up
    create_table :concerts do |t|
      t.datetime :show_date
      t.string :location
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :concerts
  end
end
