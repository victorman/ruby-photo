class CreateCategoriesPhotos < ActiveRecord::Migration
  def up
    create_table :categories_photos, :id => false do |t|
      t.integer     :category_id
      t.integer     :photo_id
    end
  end

  def down
    drop_table :categories_photos
  end
end
