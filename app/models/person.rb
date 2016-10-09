class Person < ActiveRecord::Base
	mount_uploader :image,ImageUploader 

	#searchable do 
	#	text :name, :age, :email, :born_date,:city 
	#end

	def self.search(q)
		self.where('name LIKE :q OR age LIKE :q OR email LIKE :q OR born_date LIKE :q OR city LIKE :q' , q: "%#{q}%")
	end
end