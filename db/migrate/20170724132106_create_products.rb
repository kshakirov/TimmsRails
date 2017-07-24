class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :manfr_part_num
      t.string :name
      t.string :description
      t.references :attribute_set, foreign_key: true
      t.integer :import_pk
      t.boolean :inactive
      t.integer :version
      t.decimal :weight
      t.string :legend_img_filename
      t.jsonb :critical_attributes, null: false, default: '{}'
      t.decimal :dim_length
      t.decimal :dim_height
      t.decimal :dim_width
      t.timestamps null: false
    end
  end
end
