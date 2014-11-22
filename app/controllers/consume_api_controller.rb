class ConsumeApiController < ApplicationController
  def index
	  response = HTTParty.get('http://localhost:3000/api/terminals.json')
	  terminal_array= JSON.parse(response.body)
	  for i in 0...terminal_array.length
		  terminal = Terminal.new
		  terminal.name=terminal_array[i]["name"] unless terminal_array[i].nil?
		  terminal.description=terminal_array[i]["description"] unless terminal_array[i].nil?
		  terminal.attributes_values=terminal_array[i]["attribute_values"] unless terminal_array[i].nil?
		  terminal.save
	  end 
	  redirect_to :controller=>:terminals
  end
  
end
