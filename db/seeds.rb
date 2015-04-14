# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Event.create 	title: "Yoga in the park", 
				description: "Come join us for a whole day of free yoga, hosted by YogaMan", 
				start_time: "May 10, 2015 10:00am", 
				end_time: "May 10, 2015 5:00pm", 
				location: "Union Square, New York", 
				upvote: "10"

Event.create 	title: "Jenny's Dinner Party", 
				description: "Jenny's hosting her monthly dinner party, this time she's serving pizza!", 
				start_time: "May 1, 2015 7:00pm", 
				end_time: "May 1, 2015 10:00pm", 
				location: "Jenny's apartment", 
				upvote: "5"

Event.create 	title: "Summer sale", 
				description: "Banana Republic is having a 25% summer sale", 
				start_time: "May 7, 2015 10:00am", 
				end_time: "May 15, 2015 5:00pm", 
				location: "57 Fifth Ave, New York", 
				upvote: "4"


