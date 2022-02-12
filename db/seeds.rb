# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env == 'development'
	Comment.destroy_all
	Goal.destroy_all
	User.destroy_all
	Log.destroy_all
end

user_1 = User.create(username: 'test_user', email: 'test@test.com', password: 'secret')

goals = Goal.create([
								{ 
									name: "Run 10km",
									style: 'metric',
									metric_name: 'km',
									metric_goal: 10,
									end_date: Date.today + 10,
									public: true,
									message_to_self: "I knew you could do it... ",
									user: user_1
								},
								{ 
									name: "Save $20k",
									style: 'metric',
									metric_name: 'dollars',
									metric_goal: 20000,
									end_date: Date.today.next_year,
									public: false,
									message_to_self: "Omg... $20k you weapon! haha",
									user: user_1
								},
								{ 
									name: "Workout 3x per week",
									style: 'frequency',
									frequency_count: 3,
									frequency_interval: :week,
									frequency_slack: 100,
									end_date: Date.today.next_month,
									public: true,
									message_to_self: "Yessss, nice one man.",
									user: user_1
								}])