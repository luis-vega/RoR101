json.array!(@people) do |person|
  json.name	        person.name
  json.age	      	person.age
  json.email        person.email
  json.image_url    person.image_url
  json.city			person.city
end
