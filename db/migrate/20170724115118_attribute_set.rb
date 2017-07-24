class AttributeSet < ActiveRecord::Migration
  def change
    change_table   :attribute_sets do |t|
      t.integer  :parent_part_type_id
      t.integer :import_pk
      t.string  :magento_attribute_set
      t.string :value
    end
  end
end
