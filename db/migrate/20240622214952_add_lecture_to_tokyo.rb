class AddLectureToTokyo < ActiveRecord::Migration[6.1]
  def change
    add_column :tokyos, :lecture, :integer
  end
end
