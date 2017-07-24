class Attributes < ActiveRecord::Migration
  def change
    change_table :attributes do |t|
      t.references :attribute_set,  foreign_key: true
    end
  end
end
