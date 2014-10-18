namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Cong Li",
                         email: "conglee@mail.com",
                         password: "seraph",
                         password_confirmation: "seraph",
                         admin: true)
  end
end