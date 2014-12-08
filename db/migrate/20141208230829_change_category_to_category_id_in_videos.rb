class ChangeCategoryToCategoryIdInVideos < ActiveRecord::Migration
  def change
    rename_column :videos, :category, :category_id
    change_column :videos, :category_id, :integer
  end
end
