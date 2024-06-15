class AddUserIdToTokyo < ActiveRecord::Migration[6.1]
  def change
    add_column :tokyos, :user_id, :integer
  end
end
