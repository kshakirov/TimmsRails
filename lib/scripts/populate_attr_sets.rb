require 'yaml'
sets  = YAML.load_file(File.expand_path(  __dir__ + "/sets.yml"))
sets.each do |set|
    attribute_set = AttributeSet.new set
    attribute_set.save
end