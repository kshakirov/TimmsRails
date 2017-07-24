require 'test_helper'

class AttributeTest < ActiveSupport::TestCase
 test "find" do
    attribute = Attribute.find_by_name "CW RD"
   unless attribute.nil?
     assert_equal 980190962, attribute.attribute_set_id
   end
 end
end
