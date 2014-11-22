class Terminal < ActiveRecord::Base
		store :attributes_values, accessors: [ :attr_keys ], coder: JSON

end
