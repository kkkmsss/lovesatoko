class CreateTokyos < ActiveRecord::Migration[6.1]
  def change
    create_table :tokyos do |t|
      t.string :name
      t.integer :unit
      t.text :body

      t.timestamps
    end
  end
end
