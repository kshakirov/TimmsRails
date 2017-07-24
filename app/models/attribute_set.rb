class AttributeSet < ActiveRecord::Base
  has_many  :attr, class_name: "Attribute", foreign_key: 'id'
  has_many  :product, class_name: "Product", foreign_key: 'id'
end
