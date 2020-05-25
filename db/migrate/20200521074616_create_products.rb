class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table   :products do |t|
      t.integer    :category_id
      t.integer    :menu_id
      t.string     :title
      t.integer    :price
      t.string     :discribe
      t.string     :path_to_image
      t.belongs_to :category

      t.timestamps
    end


  end
end
