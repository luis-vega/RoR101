class Person < ActiveRecord::Base
	mount_uploader :image,ImageUploader 

	#searchable do 
	#	text :name, :age, :email, :born_date,:city 
	#end
end
