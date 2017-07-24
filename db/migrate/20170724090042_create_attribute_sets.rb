class CreateAttributeSets < ActiveRecord::Migration
  def change
    create_table :attribute_sets do |t|
      t.string :name
      t.string :legend_img_filename
      t.timestamps null: false
    end
  end
end
