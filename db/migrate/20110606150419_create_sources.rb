class CreateSources < ActiveRecord::Migration
  def self.up
    create_table :sources do |t|
      t.references :user
      t.references :game
      t.string :language
      t.text :code
      t.boolean :active, :default => :false
      t.string :result

      t.timestamps
    end
  end

  def self.down
    drop_table :sources
  end
end
