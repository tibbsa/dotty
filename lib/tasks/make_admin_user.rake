namespace :db do
  desc "Create admin super-user for dev tasks"
  task make_admin_user: :environment do
    admin = User.create!(
      email: "test@test.com",
      password: "password1234",
      password_confirmation: "password1234"
    )
    admin.confirm
    admin.save
  end
end