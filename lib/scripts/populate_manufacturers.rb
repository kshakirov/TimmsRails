require 'yaml'
manufacturers  = YAML.load_file(File.expand_path(  __dir__ + "/manfrs.yml"))
manufacturers.each do |manfr|
  manfr.delete  'manfr_type_id'
  manfr.delete  'parent_manfr_id'
  manufacturer = Manufacturer.new manfr
  manufacturer.save
end