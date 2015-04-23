# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all

[{:title=> "the Bean", :url=> "http://images.chicagotraveler.com/sites/default/files/billboard/cloud-gate_C.jpg", :price=> 0, :description=> "A big metal sculpture that looks like a bean."},
 {:title=> "US Cellular", :url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/1/15/White_Sox_opening_day.jpg/600px-White_Sox_opening_day.jpg", :price=> 30, :description=> "Home to Chicago's coolest baseball team"},
 {:title=> "Wrigley Field", :url=> "http://mlb.mlb.com/chc/images/ballpark/480x200_wrigley_field.jpg", :price=> 30, :description=> "Home to Chicago's worst baseball team"},
 {:title=> "the Sears Tower", :url=> "http://theskydeck.com/wp-content/uploads/2013/06/home-ledge.jpg", :price=> 50, :description=> "Not as tall as that building in Dubai."},
 {:title=> "Chicago Theatre", :url=> "http://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Chicago_Theatre_blend.jpg/500px-Chicago_Theatre_blend.jpg", :price=> 100, :description=> "Better than broadway"}].each do |place|
  plc=Place.new
  plc.title=place[:title]
  plc.url=place[:url]
  plc.price=place[:price]
  plc.description=place[:description]
  plc.save
end