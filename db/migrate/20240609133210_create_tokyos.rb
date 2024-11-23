class CreateTokyos < ActiveRecord::Migration[6.1]
  def change
    create_table :tokyos do |t|
      t.string :name
      t.integer :unit
      t.string :mentor

      t.timestamps
    end
  end
end
