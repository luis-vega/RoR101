class Person < ActiveRecord::Base
	mount_uploader :image,ImageUploader 

	#searchable do 
	#	text :name, :age, :email, :born_date,:city 
	#end

	def self.search(term)
		self.where('name LIKE :term OR age LIKE :term OR email LIKE :term OR born_date LIKE :term OR city LIKE :term' , term: "%#{term}%")
	end
end