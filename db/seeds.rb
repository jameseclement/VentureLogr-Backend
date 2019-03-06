# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Trip.destroy_all
Entry.destroy_all
Photo.destroy_all

story1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium tellus semper libero dapibus lobortis. Donec tincidunt libero ut est congue lobortis a eu diam. Phasellus in tortor convallis, pharetra tortor et, fringilla massa. Praesent eros ligula, sollicitudin sit amet sollicitudin quis, dignissim nec dui. Donec orci augue, consequat id aliquam sollicitudin, laoreet quis metus. Nunc finibus fermentum nibh, vitae tincidunt ex efficitur vitae. Morbi ut pulvinar est. Cras nec erat purus. Praesent tristique quis ex eu accumsan. Phasellus nec ultrices elit, id pretium ex. Nulla facilisi. Mauris cursus ut orci id molestie. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In at bibendum sapien. Nam ipsum lorem, dignissim ac hendrerit non, vulputate eget odio. Integer et sapien eu purus posuere imperdiet."

story2 = "Ut non eros nulla. Pellentesque tristique erat non finibus efficitur. Praesent ullamcorper sit amet libero in tristique. Sed vel congue dolor. Nulla in gravida libero, vitae scelerisque orci. Vestibulum pellentesque malesuada lorem, sit amet tempus turpis aliquet a. Proin varius, nisi eu ornare pulvinar, odio ante facilisis augue, tempus lobortis libero enim commodo ante. Ut ullamcorper scelerisque erat, tincidunt commodo erat vehicula at. Suspendisse rhoncus imperdiet arcu, non mollis purus pellentesque et. Nulla facilisi. Sed congue risus congue erat varius sodales. Vestibulum iaculis, ipsum eu suscipit vestibulum, leo elit malesuada tortor, non molestie magna tellus in ipsum. Nam accumsan nisi id ante semper gravida. Nunc euismod mauris a est blandit, eget condimentum ante porta. Proin tristique risus eu purus vestibulum mollis""Ut non eros nulla. Pellentesque tristique erat non finibus efficitur. Praesent ullamcorper sit amet libero in tristique. Sed vel congue dolor. Nulla in gravida libero, vitae scelerisque orci. Vestibulum pellentesque malesuada lorem, sit amet tempus turpis aliquet a. Proin varius, nisi eu ornare pulvinar, odio ante facilisis augue, tempus lobortis libero enim commodo ante. Ut ullamcorper scelerisque erat, tincidunt commodo erat vehicula at. Suspendisse rhoncus imperdiet arcu, non mollis purus pellentesque et. Nulla facilisi. Sed congue risus congue erat varius sodales. Vestibulum iaculis, ipsum eu suscipit vestibulum, leo elit malesuada tortor, non molestie magna tellus in ipsum. Nam accumsan nisi id ante semper gravida."

story4 = "Nunc euismod mauris a est blandit, eget condimentum ante porta. Proin tristique risus eu purus vestibulum mollis""Ut non eros nulla. Pellentesque tristique erat non finibus efficitur. Praesent ullamcorper sit amet libero in tristique. Sed vel congue dolor. Nulla in gravida libero, vitae scelerisque orci. Vestibulum pellentesque malesuada lorem, sit amet tempus turpis aliquet a. Proin varius, nisi eu ornare pulvinar, odio ante facilisis augue, tempus lobortis libero enim commodo ante. Ut ullamcorper scelerisque erat, tincidunt commodo erat vehicula at.

Suspendisse rhoncus imperdiet arcu, non mollis purus pellentesque et. Nulla facilisi. Sed congue risus congue erat varius sodales. Vestibulum iaculis, ipsum eu suscipit vestibulum, leo elit malesuada tortor, non molestie magna tellus in ipsum. Nam accumsan nisi id ante semper gravida. Nunc euismod mauris a est blandit, eget condimentum ante porta. Proin tristique risus eu purus vestibulum mollis""Ut non eros nulla. Pellentesque tristique erat non finibus efficitur. Praesent ullamcorper sit amet libero in tristique. Sed vel congue dolor. Nulla in gravida libero, vitae scelerisque orci. Vestibulum pellentesque malesuada lorem, sit amet tempus turpis aliquet a. Proin varius, nisi eu ornare pulvinar, odio ante facilisis augue, tempus lobortis libero enim commodo ante.

Ut ullamcorper scelerisque erat, tincidunt commodo erat vehicula at. Suspendisse rhoncus imperdiet arcu, non mollis purus pellentesque et. Nulla facilisi. Sed congue risus congue erat varius sodales. Vestibulum iaculis, ipsum eu suscipit vestibulum, leo elit malesuada tortor, non molestie magna tellus in ipsum. Nam accumsan nisi id ante semper gravida. Nunc euismod mauris a est blandit, eget condimentum ante porta. Proin tristique risus eu purus vestibulum mollis"

story3 = "Sed lobortis tempor egestas. Quisque venenatis mattis quam a fringilla. Ut non lobortis dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ornare sapien quis lorem ornare porttitor. In tincidunt vestibulum elit, et tincidunt ex tempus vitae. Ut scelerisque felis tortor, vitae cursus nisl eleifend eu. Suspendisse egestas nunc sit amet nisi pharetra, et ultricies augue condimentum. Donec vel tortor vel turpis hendrerit tempor eu a elit. Mauris mollis diam nec maximus finibus. Mauris ligula lacus, cursus eget leo a, ornare sollicitudin ligula. Aenean varius congue tellus non ullamcorper. Donec vitae gravida ex."

indonesia = Trip.create(title: "Indonesia Fall 2016", date: Date.parse("October 1, 2016"), location: "Indonesia", description: story4,
  photo: 'https://i.imgur.com/SXp7RmY.jpg')

japan = Trip.create(title: "Japan Spring 2016", date: Date.parse("March 1, 2016"), location: "Japan", description: story4,
photo: 'https://i.imgur.com/UJi0BaS.jpg')

aus = Trip.create(title: "Australia Summer 2016", date: Date.parse("June 1, 2016"), location: "Sydney", description: story4,
photo: 'https://i.imgur.com/Ukq391G.jpg')

southafrica = Trip.create(title: "South Africa Winter 2017", date: Date.parse("Feb 1, 2017"), location: "Cape Town", description: story4 ,
photo: 'https://i.imgur.com/WGevmOm.jpg')


indonesia_day_1 = Entry.create({ title: "Day 1" , date: Date.parse("October 1, 2016"), story: story1, trip: indonesia})
indonesia_day_2 = Entry.create({ title: "Day 2" , date: Date.parse("October 2, 2016"), story: story3, trip: indonesia})
indonesia_day_3 = Entry.create({ title: "Day 3" , date: Date.parse("October 3, 2016"), story: story1, trip: indonesia})
indonesia_day_4 = Entry.create({ title: "Day 4" , date: Date.parse("October 4, 2016"), story: story3, trip: indonesia})

aus_day_1 = Entry.create({ title: "Day 1" , date: Date.parse("June 1, 2017"), story: story1, trip: aus})
aus_day_2 = Entry.create({ title: "Day 2" , date: Date.parse("June 2, 2017"), story: story1, trip: aus})
aus_day_3 = Entry.create({ title: "Day 3" , date: Date.parse("June 3, 2017"), story: story3, trip: aus})
aus_day_4 = Entry.create({ title: "Day 4" , date: Date.parse("June 4, 2017"), story: story3, trip: aus})

southafrica_day_1 = Entry.create({ title: "Day 1" , date: Date.parse("February 1, 2017"), story: story1, trip: southafrica})
southafrica_day_2 = Entry.create({ title: "Day 2" , date: Date.parse("February 2, 2017"), story: story3, trip: southafrica})
southafrica_day_3 = Entry.create({ title: "Day 3" , date: Date.parse("February 3, 2017"), story: story3, trip: southafrica})
southafrica_day_4 = Entry.create({ title: "Day 4" , date: Date.parse("February 4, 2017"), story: story1, trip: southafrica})

japan_day_1 = Entry.create({ title: "Day 1" , date: Date.parse("March 1, 2016"), story: story1, trip: japan})
japan_day_2 = Entry.create({ title: "Day 2" , date: Date.parse("March 2, 2016"), story: story1, trip: japan})
japan_day_3 = Entry.create({ title: "Day 3" , date: Date.parse("March 3, 2016"), story: story3, trip: japan})
japan_day_4 = Entry.create({ title: "Day 4" , date: Date.parse("March 4, 2016"), story: story1, trip: japan})
japan_day_5 = Entry.create({ title: "Day 5" , date: Date.parse("March 5, 2016"), story: story1, trip: japan})
japan_day_6 = Entry.create({ title: "Day 6" , date: Date.parse("March 6, 2016"), story: story3, trip: japan})
japan_day_7 = Entry.create({ title: "Day 7" , date: Date.parse("March 7, 2016"), story: story1, trip: japan})
japan_day_8 = Entry.create({ title: "Day 8" , date: Date.parse("March 8, 2016"), story: story1, trip: japan})
japan_day_9 = Entry.create({ title: "Day 9" , date: Date.parse("March 9, 2016"), story: story3, trip: japan})
japan_day_10 = Entry.create({ title: "Day 10" , date: Date.parse("March 10, 2016"), story: story1, trip: japan})
japan_day_11 = Entry.create({ title: "Day 11" , date: Date.parse("March 11, 2016"), story: story1, trip: japan})
japan_day_12 = Entry.create({ title: "Day 12" , date: Date.parse("March 12, 2016"), story: story3, trip: japan})




japanPic1 = Photo.create({url: "https://i.imgur.com/P9IVqkS.jpg", caption: "Pic1", entry: japan_day_1 })
japanPic2 = Photo.create({url: "https://i.imgur.com/lbE1j2e.jpg", caption: "Pic1", entry: japan_day_1})
japanPic3 = Photo.create({url: "https://i.imgur.com/U7KEDdU.jpg", caption: "Pic1", entry: japan_day_1})
japanPic4 = Photo.create({url: "https://i.imgur.com/Ypm8yp6.jpg", caption: "Pic1", entry: japan_day_1})

japanPic5 = Photo.create({url: "https://i.imgur.com/X2tZxzn.jpg", caption: "Pic1", entry: japan_day_2})
japanPic6 = Photo.create({url: "https://i.imgur.com/hrzB4BT.jpg", caption: "Pic1", entry: japan_day_2})
japanPic7 = Photo.create({url: "https://i.imgur.com/Iu3RA0m.jpg", caption: "Pic1", entry: japan_day_2})
japanPic8 = Photo.create({url: "https://i.imgur.com/TqYbkf9.jpg", caption: "Pic1", entry: japan_day_2})

japanPic9  = Photo.create({url: "https://i.imgur.com/gXuYHn8.jpg", caption: "Pic1", entry: japan_day_3})
japanPic10 = Photo.create({url: "https://i.imgur.com/WlhfN9X.jpg", caption: "Pic1", entry: japan_day_3})

japanPic11 = Photo.create({url: "https://i.imgur.com/3YENql9.jpg", caption: "Pic1", entry: japan_day_3})
japanPic12 = Photo.create({url: "https://i.imgur.com/vIudgLG.jpg", caption: "Pic1", entry: japan_day_3})

# ausPic1 = Photo.create({url: "https://cache-graphicslib.viator.com/graphicslib/thumbs674x446/2230/SITours/sydney-tour-with-optional-sydney-harbour-lunch-cruise-in-sydney-115286.jpg", caption: "Pic1", entry: aus_day_1 })
# ausPic2 = Photo.create({url: "https://www.e-architect.co.uk/images/jpgs/sydney/cook_phillip_park_b220312_ab2.jpg", caption: "Pic1", entry: aus_day_1})
# ausPic3 = Photo.create({url: "https://www.e-architect.co.uk/images/jpgs/sydney/cowshed-house-sydney-c210813-b11.jpg", caption: "Pic1", entry: aus_day_2})
# ausPic4 = Photo.create({url: "https://www.e-architect.co.uk/images/jpgs/sydney/customs_house_tigers_l210110_2.jpg", caption: "Pic1", entry: aus_day_2})
# ausPic5 = Photo.create({url: "https://www.e-architect.co.uk/images/jpgs/sydney/danks-bourke-t080213-6.jpg", caption: "Pic1", entry: aus_day_3})
# ausPic6 = Photo.create({url: "https://i.imgur.com/ECj7Aj3.jpg", caption: "Pic1", entry: aus_day_3})
# ausPic5 = Photo.create({url: "https://i.imgur.com/rZkVuQ6.jpg", caption: "Pic1", entry: aus_day_1})
# ausPic6 = Photo.create({url: "https://i.imgur.com/TokoKOP.jpg", caption: "Pic1", entry: aus_day_1})

indonesiaPic1 = Photo.create({url: "https://i.imgur.com/3zvKbhx.jpg", caption: "Pic1", entry: indonesia_day_1 })
indonesiaPic2 = Photo.create({url: "https://i.imgur.com/KcMu4B6.jpg", caption: "Pic1", entry: indonesia_day_1})
indonesiaPic3 = Photo.create({url: "https://i.imgur.com/20LFfwKb.jpg", caption: "Pic1", entry: indonesia_day_2})
indonesiaPic4 = Photo.create({url: "https://i.imgur.com/iaWJ5r2.jpg", caption: "Pic1", entry: indonesia_day_2})
indonesiaPic5 = Photo.create({url: "https://i.imgur.com/nnNzdCf.jpg", caption: "Pic1", entry: indonesia_day_3})
indonesiaPic6 = Photo.create({url: "https://i.imgur.com/WjTSOkk.jpg", caption: "Pic1", entry: indonesia_day_3})
indonesiaPic5 = Photo.create({url: "https://i.imgur.com/Cu4quIs.jpg", caption: "Pic1", entry: indonesia_day_1})
indonesiaPic6 = Photo.create({url: "https://i.imgur.com/s7RBnqf.jpg", caption: "Pic1", entry: indonesia_day_1})

southafricaPic1 = Photo.create({url: "https://i.imgur.com/GLlWkhL.jpg", caption: "Pic1", entry: southafrica_day_1 })
southafricaPic2 = Photo.create({url: "https://i.imgur.com/uajN4qx.jpg", caption: "Pic1", entry: southafrica_day_1})
southafricaPic3 = Photo.create({url: "https://i.imgur.com/Dv553y2.jpg", caption: "Pic1", entry: southafrica_day_2})
southafricaPic4 = Photo.create({url: "https://i.imgur.com/leAJE7n.jpg", caption: "Pic1", entry: southafrica_day_2})
southafricaPic5 = Photo.create({url: "https://i.imgur.com/R0yyXAb.jpg", caption: "Pic1", entry: southafrica_day_3})
southafricaPic6 = Photo.create({url: "https://i.imgur.com/UQbBrQ2.jpg", caption: "Pic1", entry: southafrica_day_3})
southafricaPic5 = Photo.create({url: "https://i.imgur.com/dacjUBY.jpg", caption: "Pic1", entry: southafrica_day_1})
southafricaPic6 = Photo.create({url: "https://i.imgur.com/UwFf29f.jpg", caption: "Pic1", entry: southafrica_day_1})
