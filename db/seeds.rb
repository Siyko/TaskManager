# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:'siy2001@ukr.net',password: '123123123')
User.create(email:'siy2002@ukr.net',password: '123123123')
User.create(email:'siy2003@ukr.net',password: '123123123')
User.create(email:'siy2004@ukr.net',password: '123123123')

Task.create(name:'1')
Task.create(name:'2')
Task.create(name:'3')
Task.create(name:'4')

TasksUser.create(user_id: 1,task_id: 1)
TasksUser.create(user_id: 2,task_id: 2)
TasksUser.create(user_id: 3,task_id: 3)
TasksUser.create(user_id: 4,task_id: 4)
