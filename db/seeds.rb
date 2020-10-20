# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

datafile = Rails.root + 'db/doctors.csv'

CSV.foreach(datafile, headers: true) do |row|

  Medic.create_or_find_by({ccg: row[0]}) do |hr|
    hr.ccg = row[0]
    hr.group =  row[1]
    hr.postcode =  row[2]
    hr.practice_name =  row[3]
    hr.address =  row[4]
    hr.list_size = row[5]
    hr.brick = row[6]
    hr.telephone = row[7]
  end

end