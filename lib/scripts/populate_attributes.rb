require 'yaml'
attributes  = YAML.load_file(File.expand_path(  __dir__ + "/attributes.yml"))
attributes.each do |attribute|
  attribute['attribute_set_id'] = attribute['part_type_id']
  attribute.delete  'part_type_id'
  attribute_set = Attribute.new attribute
  attribute_set.save
end