class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :name
      t.string :smallname
      t.text :statement
      t.text :inputdetails
      t.text :outputdetails
      t.text :requirements
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
