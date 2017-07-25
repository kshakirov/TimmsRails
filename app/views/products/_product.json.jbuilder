json.extract! product, :id, :manfr_part_num, :name, :description, :attribute_set, :created_at, :updated_at
json.url product_url(product, format: :json)
