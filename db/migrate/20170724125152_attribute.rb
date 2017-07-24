class Attribute < ActiveRecord::Migration
  def change
    change_table :attributes do |t|
      t.string :data_type
      t.boolean :enum_id
      t.string :unit
      t.decimal :tolerance
      t.string :json_name
      t.string :idx_name
      t.boolean :null_allowed
      t.boolean :null_display
      t.decimal :min_val
      t.decimal :max_val
      t.string :regex
      t.integer :parent_id
      t.integer :length
      t.decimal :scale
      t.integer :length_web
      t.integer :scale_web
      t.boolean :is_visible_in_list
      t.boolean :is_critical_dimension
      t.integer :seq_num
    end
  end
end
