class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.string :youtube_url
      t.string :author
      t.string :author_url

      t.timestamps
    end
  end
end
