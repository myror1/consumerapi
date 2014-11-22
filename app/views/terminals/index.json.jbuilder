json.array!(@terminals) do |terminal|
  json.extract! terminal, :id, :name, :description, :attributes_values
  json.url terminal_url(terminal, format: :json)
end
