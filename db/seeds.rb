# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Trip.destroy_all
Entry.destroy_all

indonesia = Trip.create(title: "Indonesia Fall 2016", date: Date.parse("October 1, 2016"), location: "Indonesia", description: '2 Months in Indonesia',
  photo: 'https://cdn.britannica.com/s:700x450/66/183666-004-EB7D9DA1.jpg')

indonesia_day_1 = Entry.create([{ title: "Day 1" , date: Date.parse("October 1, 2016"), story: 'Left sinagpore today, very excited', trip: indonesia}])
indonesia_day_2 = Entry.create([{ title: "Day 2" , date: Date.parse("October 2, 2016"), story: 'Only sailing, nothing to speak of', trip: indonesia}])


japan = Trip.create(title: "Japan Spring 2016", date: Date.parse("March 1, 2016"), location: "Japan", description: '2 Weeks in Tokyo',
   photo: 'http://www.globalblue.com/corporate/market-insights/article685045.ece/alternates/LANDSCAPE2_970/Tokyo.jpg')

japan_day_1 = Entry.create([{ title: "Day 1" , date: Date.parse("October 1, 2016"), story: 'Arrived at NRT', trip: japan}])
