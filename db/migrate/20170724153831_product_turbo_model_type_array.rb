class ProductTurboModelTypeArray < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.text :turbo_type, array: true, default: []
      t.text :turbo_model, array: true, default: []
    end
  end
end
