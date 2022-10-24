class CreateSouls < ActiveRecord::Migration[6.1]
  def change
    create_table :souls do |t|
      t.string :name
      t.string :location 
      t.integer :years_dead
      t.integer :sentence
      t.integer :demon_id
    end
  end
end
