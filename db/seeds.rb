# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

filename = File.expand_path('../Sacramentorealestatetransactions.csv', __FILE__)

CSV.foreach(filename, :headers=>true) do |csv_obj|
  Home.create( { street: csv_obj['street'], city: csv_obj['city'], price: csv_obj['price']  } )
end
