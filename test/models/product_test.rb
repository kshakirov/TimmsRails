require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "insert" do
    product  = Product.new
    product.name="Pr 3"
    product.manfr_part_num= "12344"
    product.attribute_set_id=980190962
    product.critical_attributes = {id:  'test'}
    product.save
  end
end
