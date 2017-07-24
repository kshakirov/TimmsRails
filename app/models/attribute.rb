class Attribute < ActiveRecord::Base
    belongs_to :attribute_set, class_name:  "AttributeSet", foreign_key: 'attribute_set_id'
end
