class CreateDemons < ActiveRecord::Migration[6.1]
  def change
    create_table :demons do |t|
      t.string :name
      t.string :classification
    end
  end
end
