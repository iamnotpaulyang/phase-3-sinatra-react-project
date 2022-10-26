class UpdateDemons < ActiveRecord::Migration[6.1]
  def change
    add_column :demons, :demon_img, :string
  end
end
