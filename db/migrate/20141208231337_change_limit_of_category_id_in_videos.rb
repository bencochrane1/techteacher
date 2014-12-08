class ChangeLimitOfCategoryIdInVideos < ActiveRecord::Migration
  def change
    change_column :videos, :category_id, :integer, :limit => nil
  end
end
