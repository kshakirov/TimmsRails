class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.string :type_value
      t.timestamps null: false
    end
  end
end
