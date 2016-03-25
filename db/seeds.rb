# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  user = User.new
  user.account = 'admin'
  user.name = 'アドミニストレーター'
  user.password = 'admin'
  user.password_confirmation = 'admin'
  user.admin  = true
  user.save!

  user = User.new
  user.account = 'test1'
  user.name = 'てすと1'
  user.password = 'test1'
  user.password_confirmation = 'test1'
  user.admin  = false
  user.save!

  user = User.new
  user.account = 'test2'
  user.name = 'てすと2'
  user.password = 'test2'
  user.password_confirmation = 'test2'
  user.admin  = false
  user.save!
