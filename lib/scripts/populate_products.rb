require 'yaml'
attributes  = YAML.load_file(File.expand_path(  __dir__ + "/products.yml"))
attributes.each do |products|
  products['attribute_set_id'] = products['part_type_id']
  products.delete  'part_type_id'
  products.delete  'part_type_id'
  attribute_set = Attribute.new products
  attribute_set.save
end