class AddNameToTokyo < ActiveRecord::Migration[6.1]
  def change
    add_column :tokyos, :name, :string
  end
end
