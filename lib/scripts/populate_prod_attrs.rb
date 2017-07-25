require 'yaml'

public
def map_2_json custom_attrs
  Hash[custom_attrs.keys.map {|ca| [ca, custom_attrs[ca]['value']]}]
end


File.open(File.expand_path(__dir__ + "/all_products.yml"), 'r') do |io|
  Psych.load_stream(io) do |document|
    product = nil
    begin
      product = Product.find document['sku']
    rescue Exception => e
      puts "Problem #{document['sku'].to_s}"
      p e.message
      break
    end
    if document.key? 'custom_attrs'
      value = map_2_json (document['custom_attrs'])
     # product.update_attribute :critical_attributes, value
    end
    if document.key? 'turbo_type' and document['turbo_type'] and not document['turbo_type'].empty?
      product.update_attribute :turbo_type, document['turbo_type']
    end
    if document.key? 'turbo_model' and document['turbo_model'] and not document['turbo_model'].empty?
      product.update_attribute :turbo_model, document['turbo_model']
    end
  end
end