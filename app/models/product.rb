class Product < ActiveRecord::Base
  self.per_page = 10
  belongs_to :attribute_set, class_name: "AttributeSet", foreign_key: 'attribute_set_id'
end
