class AttributeSetAddIndex < ActiveRecord::Migration
  def change
    add_index :attribute_sets, :name
  end
end
