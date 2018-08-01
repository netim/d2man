User.create!(name:  "John Doe",
             email: "john@doe.com",
             password:              "123456",
             password_confirmation: "123456",
             admin: true)

User.create!(name:  "Jane Doe",
             email: "jane@doe.com",
             password:              "456789",
             password_confirmation: "456789",
             admin: true)

User.create!(name:  "Jackie Doe",
             email: "jackie@doe.com",
             password:              "456789",
             password_confirmation: "456789")

User.create!(name:  "Bruce Doe",
             email: "bruce@doe.com",
             password:              "456789",
             password_confirmation: "456789")

User.create!(name:  "Will Doe",
             email: "will@doe.com",
             password:              "456789",
             password_confirmation: "456789")

TeamName.create!(name: "Web")

TeamName.create!(name: "Mobile")

TeamName.create!(name: "IoT")

Team.create!(team_name_id: 1,
             user_id: 2)

Team.create!(team_name_id: 1,
             user_id: 3)

Team.create!(team_name_id: 2,
             user_id: 3)

Team.create!(team_name_id: 2,
             user_id: 4)

Team.create!(team_name_id: 3,
             user_id: 4)

Team.create!(team_name_id: 3,
            user_id: 5)


TeamAdmin.create!(team_name_id: 1,
                  admin_id: 1)

TeamAdmin.create!(team_name_id: 2,
                  admin_id: 1 )

TeamAdmin.create!(team_name_id: 3,
                  admin_id: 2 )
                  
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
