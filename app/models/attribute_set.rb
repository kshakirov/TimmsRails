class AttributeSet < ActiveRecord::Base
  has_many  :attr, class_name: "Attribute", foreign_key: 'attribute_set_id'
  has_many  :product, class_name: "Product", foreign_key: 'attribute_set_id'
  self.per_page = 10
end
