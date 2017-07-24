require 'yaml'

public
def map_2_json custom_attrs
  Hash[custom_attrs.keys.map {|ca| [ca, custom_attrs[ca]['value']]}]
end


File.open(File.expand_path(__dir__ + "/all_products.yml"), 'r') do |io|
  Psych.load_stream(io) do |document|
    if document.key? 'custom_attrs'
      begin
        product = Product.find document['sku']
        value = map_2_json (document['custom_attrs'])
        product.update_attribute :critical_attributes, value
      rescue Exception => e
        puts "Problem #{document['sku'].to_s}"
        p e.message
      end
    end
  end
end