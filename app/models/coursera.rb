class Coursera
	include HTTParty

	default_options.update(verify: false)
	base_uri 'https://api.coursera.org/api/courses.v1'
	default_params fields: "name,slug", q:"search"
	format :json

	def self.for term
		get("",query:{query:term})["elements"]
	end
end



  
