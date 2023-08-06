# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do |n|
  User.create(username: "user#{n}", password: '123456', admin: false)
end

# Create an admin user
User.create(username: 'adminuser', password: 'admin123456', admin: true)


# 创建一些初始的 Team 数据
Team.create(title: 'Team A')
Team.create(title: 'Team B')
Team.create(title: 'Team C')

# 创建一些初始的 Project 数据，并关联到对应的 Team
team_a = Team.find_by(title: 'Team A')
team_b = Team.find_by(title: 'Team B')
team_c = Team.find_by(title: 'Team C')

Project.create(title: 'Project 1', desctiption: 'Description of Project 1', team: team_a)
Project.create(title: 'Project 2', desctiption: 'Description of Project 2', team: team_b)
Project.create(title: 'Project 3', desctiption: 'Description of Project 3', team: team_c)

# 创建一些初始的 Task 数据，并关联到对应的 Project
project_1 = Project.find_by(title: 'Project 1')
project_2 = Project.find_by(title: 'Project 2')
project_3 = Project.find_by(title: 'Project 3')

Task.create(task_title: 'Task 1', task_description: 'Description of Task 1', project: project_1)
Task.create(task_title: 'Task 2', task_description: 'Description of Task 2', project: project_2)
Task.create(task_title: 'Task 3', task_description: 'Description of Task 3', project: project_3)

# 创建一些初始的 TheDeadline 数据，并关联到对应的 Task
task_1 = Task.find_by(task_title: 'Task 1')
task_2 = Task.find_by(task_title: 'Task 2')
task_3 = Task.find_by(task_title: 'Task 3')

Thedeadline.create(deadlinetime: DateTime.new(2023, 8, 10, 12, 0, 0), task_id: task_1.id)
Thedeadline.create(deadlinetime: DateTime.new(2023, 8, 15, 18, 30, 0), task_id: task_2.id)
Thedeadline.create(deadlinetime: DateTime.new(2023, 8, 20, 10, 0, 0), task_id: task_3.id)

# 创建一些初始的 User 数据
User.create(username: 'user1', password: 'password1')
User.create(username: 'user2', password: 'password2')
User.create(username: 'user3', password: 'password3')

# 创建一些初始的 Comment 数据，并关联到对应的 Task 和 User
user1 = User.find_by(username: 'user1')
user2 = User.find_by(username: 'user2')
user3 = User.find_by(username: 'user3')

Comment.create(content: 'Comment 1', task: task_1, user: user1)
Comment.create(content: 'Comment 2', task: task_2, user: user2)
Comment.create(content: 'Comment 3', task: task_3, user: user3)
