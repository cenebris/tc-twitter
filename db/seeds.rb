
20.times do 

a=Tweet.new
a.body = Faker::Lorem.words(10).join(" ")
a.user_id = 16
a.save
	
end